.class public Lk8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->c()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    long-to-int v0, v3

    .line 19
    new-array v3, v0, [B

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 26
    .line 27
    .line 28
    if-ne v4, v0, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v3, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_0
    if-ge v3, v0, :cond_3

    .line 46
    .line 47
    new-instance v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    .line 48
    .line 49
    invoke-direct {v4}, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_0

    .line 61
    .line 62
    const/4 v6, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const/4 v6, 0x0

    .line 65
    :goto_1
    iput-boolean v6, v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->b:Z

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iput-object v6, v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->d:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iput-object v6, v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->c:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    iput-object v6, v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->f:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    iput-object v6, v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->g:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iput-object v6, v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->e:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    iput-object v6, v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->h:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    iput-object v6, v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->i:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    const/4 v7, 0x0

    .line 114
    :goto_2
    if-ge v7, v6, :cond_1

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    iget-object v10, v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->j:Ljava/util/Map;

    .line 125
    .line 126
    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    add-int/lit8 v7, v7, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_1
    invoke-static {}, Lma/c;->a()Lma/c;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v6, v5, v4}, Lma/c;->e(ILcom/xinzhu/overmind/server/os/MindDeviceInfo;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v3, v3, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 143
    .line 144
    const-string v2, "Unable to read Persistence file."

    .line 145
    .line 146
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto :goto_3

    .line 152
    :catch_0
    move-exception v0

    .line 153
    :try_start_1
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    .line 154
    .line 155
    if-nez v2, :cond_3

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .line 159
    .line 160
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    .line 166
    .line 167
    throw v0
.end method
