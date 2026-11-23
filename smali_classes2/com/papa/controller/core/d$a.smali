.class Lcom/papa/controller/core/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/d;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/core/d;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/controller/core/d;->b(Lcom/papa/controller/core/d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/papa/controller/core/d;->e(Lcom/papa/controller/core/d;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->b()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->b()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v2, 0x17

    .line 43
    .line 44
    if-lt v1, v2, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 61
    .line 62
    invoke-static {v1, v2}, Landroidx/core/app/q;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string p1, "Unknow"

    .line 74
    .line 75
    :goto_0
    iget-object v1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/papa/controller/core/d;->g(Lcom/papa/controller/core/d;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/papa/controller/core/d;->g(Lcom/papa/controller/core/d;)Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/papa/controller/core/e;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 100
    .line 101
    invoke-static {v0, p1}, Lcom/papa/controller/core/d;->h(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)Z

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    new-instance v1, Lcom/papa/controller/core/e;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 108
    .line 109
    invoke-static {v2}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-direct {v1, v2, v0, p1}, Lcom/papa/controller/core/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/papa/controller/core/d;->i(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/c;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v1, p1}, Lcom/papa/controller/core/e;->E(Lcom/papa/controller/core/c;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/papa/controller/core/d;->g(Lcom/papa/controller/core/d;)Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 135
    .line 136
    invoke-static {p1, v1}, Lcom/papa/controller/core/d;->j(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)V

    .line 137
    .line 138
    .line 139
    nop

    .line 140
    :cond_3
    :goto_1
    return-void
.end method

.method b(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->b()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/papa/controller/core/d;->g(Lcom/papa/controller/core/d;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/papa/controller/core/d;->g(Lcom/papa/controller/core/d;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/papa/controller/core/e;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/papa/controller/core/d;->k(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/papa/controller/core/d;->a(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/ControllerManager$d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/papa/controller/core/d;->a(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/ControllerManager$d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lcom/papa/controller/core/ControllerManager$c;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lcom/papa/controller/core/ControllerManager$d;->onControllerDeviceRemoved(Lcom/papa/controller/core/ControllerManager$c;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/papa/controller/core/d;->a(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/ControllerManager$d;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/papa/controller/core/d;->a(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/ControllerManager$d;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lcom/papa/controller/core/ControllerManager$c;

    .line 58
    .line 59
    invoke-interface {v0, p1}, Lcom/papa/controller/core/ControllerManager$d;->onControllerDeviceAdded(Lcom/papa/controller/core/ControllerManager$c;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    check-cast p1, Lcom/papa/controller/core/ControllerManager$c;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/papa/controller/core/d$a;->b(Lcom/papa/controller/core/ControllerManager$c;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    check-cast p1, Lcom/papa/controller/core/ControllerManager$c;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/papa/controller/core/d$a;->a(Lcom/papa/controller/core/ControllerManager$c;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_0
    return-void
.end method
