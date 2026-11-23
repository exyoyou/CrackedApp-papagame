.class Lcom/papa/controller/component/bluetooth/BluetoothManager$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/component/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

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

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Lcom/papa/controller/component/bluetooth/BluetoothManager$c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 18
    .line 19
    iget p1, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq p1, v1, :cond_3

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq p1, v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-eq p1, v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_5

    .line 48
    .line 49
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 59
    .line 60
    invoke-static {p1, v1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->c(Lcom/papa/controller/component/bluetooth/BluetoothManager;ILandroid/bluetooth/BluetoothDevice;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-static {p1, v1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->c(Lcom/papa/controller/component/bluetooth/BluetoothManager;ILandroid/bluetooth/BluetoothDevice;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Lcom/papa/controller/component/bluetooth/BluetoothManager$c;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager$c;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Lcom/papa/controller/component/bluetooth/BluetoothManager$c;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager$c;->b(Landroid/bluetooth/BluetoothDevice;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_0
    return-void
.end method
