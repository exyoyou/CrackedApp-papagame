.class Lcom/papa/controller/component/bluetooth/spp/b$c;
.super Lcom/papa/controller/component/bluetooth/spp/b$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/spp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic f:Lcom/papa/controller/component/bluetooth/spp/b;


# direct methods
.method public constructor <init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$c;->f:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/controller/component/bluetooth/spp/b$d;-><init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method c(Ljava/util/ArrayList;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    add-int/2addr v0, v2

    .line 16
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    return v2
.end method

.method public run()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->c:Ljava/io/InputStream;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "GB"

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_1
    array-length v5, v2

    .line 21
    if-ge v4, v5, :cond_2

    .line 22
    .line 23
    aget-byte v5, v2, v4

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-le v6, v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eq v6, v5, :cond_0

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-eq v1, v5, :cond_2

    .line 48
    .line 49
    :goto_2
    const/4 v2, 0x0

    .line 50
    goto :goto_3

    .line 51
    :cond_2
    const/4 v2, 0x1

    .line 52
    :goto_3
    if-nez v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/b$c;->c(Ljava/util/ArrayList;I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    new-array v2, v1, [B

    .line 69
    .line 70
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-ge v3, v4, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    aput-byte v4, v2, v3

    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$c;->f:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->h(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/os/Handler;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v3, -0x1

    .line 98
    const/4 v4, 0x2

    .line 99
    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$c;->f:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->i(Lcom/papa/controller/component/bluetooth/spp/b;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$c;->f:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->e(Lcom/papa/controller/component/bluetooth/spp/b;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
