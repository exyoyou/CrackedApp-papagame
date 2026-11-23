.class Lcom/papa/controller/core/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/core/ControllerManager$d;


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
    iput-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

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
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

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
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->b()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v2, 0x17

    .line 44
    .line 45
    if-lt v1, v2, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 62
    .line 63
    invoke-static {v1, v2}, Landroidx/core/app/q;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string p1, "Unknow"

    .line 75
    .line 76
    :goto_0
    iget-object v1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/papa/controller/core/d;->g(Lcom/papa/controller/core/d;)Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/papa/controller/core/d;->g(Lcom/papa/controller/core/d;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/papa/controller/core/e;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 101
    .line 102
    invoke-static {v0, p1}, Lcom/papa/controller/core/d;->h(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)Z

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    new-instance v1, Lcom/papa/controller/core/e;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 109
    .line 110
    invoke-static {v2}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-direct {v1, v2, v0, p1}, Lcom/papa/controller/core/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/papa/controller/core/d;->i(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/c;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v1, p1}, Lcom/papa/controller/core/e;->E(Lcom/papa/controller/core/c;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/papa/controller/core/d;->c(Lcom/papa/controller/core/d;)Landroid/os/Handler;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v1, p1}, Lcom/papa/controller/core/e;->F(Landroid/os/Handler;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/papa/controller/core/d;->d(Lcom/papa/controller/core/d;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-virtual {v1, p1}, Lcom/papa/controller/core/e;->G(Z)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/papa/controller/core/d;->g(Lcom/papa/controller/core/d;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 154
    .line 155
    invoke-static {p1, v1}, Lcom/papa/controller/core/d;->j(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)V

    .line 156
    .line 157
    .line 158
    nop

    .line 159
    :cond_3
    :goto_1
    return-void
.end method

.method public onControllerDeviceAdded(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/controller/core/d;->l(Lcom/papa/controller/core/d;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/papa/controller/core/d;->l(Lcom/papa/controller/core/d;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x3

    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/papa/controller/core/d$b;->a(Lcom/papa/controller/core/ControllerManager$c;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onControllerDeviceRemoved(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/controller/core/d;->l(Lcom/papa/controller/core/d;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/papa/controller/core/d;->l(Lcom/papa/controller/core/d;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x4

    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
