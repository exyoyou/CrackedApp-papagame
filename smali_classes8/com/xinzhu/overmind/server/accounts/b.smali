.class public Lcom/xinzhu/overmind/server/accounts/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/accounts/b$b;,
        Lcom/xinzhu/overmind/server/accounts/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/io/File;

.field private static final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "data/app/system/account-list.ini"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/xinzhu/overmind/server/accounts/b;->a:Ljava/io/File;

    .line 19
    .line 20
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "data/app/system/account-visibility-list.ini"

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/xinzhu/overmind/server/accounts/b;->b:Ljava/io/File;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/accounts/b;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/accounts/b;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static c()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/accounts/b$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 14
    .line 15
    sget-object v6, Lcom/xinzhu/overmind/server/accounts/b;->a:Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    invoke-static {v5}, Lcom/xinzhu/overmind/utils/l;->w(Ljava/io/InputStream;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    array-length v7, v6

    .line 25
    invoke-virtual {v0, v6, v3, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    :goto_0
    if-lez v6, :cond_2

    .line 39
    .line 40
    new-instance v7, Lcom/xinzhu/overmind/server/accounts/b$a;

    .line 41
    .line 42
    invoke-direct {v7}, Lcom/xinzhu/overmind/server/accounts/b$a;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    iput v8, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->a:I

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    iput-object v9, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    new-instance v10, Landroid/accounts/Account;

    .line 66
    .line 67
    invoke-direct {v10, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object v10, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->b:Landroid/accounts/Account;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    iput-object v8, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->d:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 79
    .line 80
    .line 81
    move-result-wide v8

    .line 82
    iput-wide v8, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->e:J

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    :goto_1
    if-lez v8, :cond_0

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    iget-object v11, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->f:Ljava/util/List;

    .line 99
    .line 100
    new-instance v12, Landroid/util/Pair;

    .line 101
    .line 102
    invoke-direct {v12, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    add-int/lit8 v8, v8, -0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    :goto_2
    if-lez v8, :cond_1

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    iget-object v11, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->g:Ljava/util/List;

    .line 126
    .line 127
    new-instance v12, Landroid/util/Pair;

    .line 128
    .line 129
    invoke-direct {v12, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    add-int/lit8 v8, v8, -0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_1
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    .line 140
    .line 141
    add-int/lit8 v6, v6, -0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    .line 146
    .line 147
    new-array v0, v2, [Ljava/io/Closeable;

    .line 148
    .line 149
    aput-object v5, v0, v3

    .line 150
    .line 151
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 152
    .line 153
    .line 154
    return-object v1

    .line 155
    :catch_0
    move-exception v1

    .line 156
    goto :goto_3

    .line 157
    :catchall_0
    move-exception v1

    .line 158
    goto :goto_4

    .line 159
    :catch_1
    move-exception v1

    .line 160
    move-object v5, v4

    .line 161
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    .line 166
    .line 167
    new-array v0, v2, [Ljava/io/Closeable;

    .line 168
    .line 169
    aput-object v5, v0, v3

    .line 170
    .line 171
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 172
    .line 173
    .line 174
    return-object v4

    .line 175
    :catchall_1
    move-exception v1

    .line 176
    move-object v4, v5

    .line 177
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    .line 179
    .line 180
    new-array v0, v2, [Ljava/io/Closeable;

    .line 181
    .line 182
    aput-object v4, v0, v3

    .line 183
    .line 184
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 185
    .line 186
    .line 187
    throw v1
.end method

.method public static d()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/accounts/b$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 14
    .line 15
    sget-object v6, Lcom/xinzhu/overmind/server/accounts/b;->b:Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    invoke-static {v5}, Lcom/xinzhu/overmind/utils/l;->w(Ljava/io/InputStream;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    array-length v7, v6

    .line 25
    invoke-virtual {v0, v6, v3, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    :goto_0
    if-lez v6, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    :goto_1
    if-lez v7, :cond_1

    .line 48
    .line 49
    new-instance v8, Lcom/xinzhu/overmind/server/accounts/b$b;

    .line 50
    .line 51
    invoke-direct {v8}, Lcom/xinzhu/overmind/server/accounts/b$b;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    new-instance v11, Landroid/accounts/Account;

    .line 63
    .line 64
    invoke-direct {v11, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object v11, v8, Lcom/xinzhu/overmind/server/accounts/b$b;->b:Landroid/accounts/Account;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    iput v9, v8, Lcom/xinzhu/overmind/server/accounts/b$b;->a:I

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    :goto_2
    if-lez v9, :cond_0

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    iget-object v12, v8, Lcom/xinzhu/overmind/server/accounts/b$b;->c:Ljava/util/List;

    .line 97
    .line 98
    new-instance v13, Landroid/util/Pair;

    .line 99
    .line 100
    invoke-direct {v13, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    add-int/lit8 v9, v9, -0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_0
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .line 111
    .line 112
    add-int/lit8 v7, v7, -0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 119
    .line 120
    .line 121
    new-array v0, v2, [Ljava/io/Closeable;

    .line 122
    .line 123
    aput-object v5, v0, v3

    .line 124
    .line 125
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :catch_0
    move-exception v1

    .line 130
    goto :goto_3

    .line 131
    :catchall_0
    move-exception v1

    .line 132
    goto :goto_4

    .line 133
    :catch_1
    move-exception v1

    .line 134
    move-object v5, v4

    .line 135
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    .line 140
    .line 141
    new-array v0, v2, [Ljava/io/Closeable;

    .line 142
    .line 143
    aput-object v5, v0, v3

    .line 144
    .line 145
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 146
    .line 147
    .line 148
    return-object v4

    .line 149
    :catchall_1
    move-exception v1

    .line 150
    move-object v4, v5

    .line 151
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    .line 153
    .line 154
    new-array v0, v2, [Ljava/io/Closeable;

    .line 155
    .line 156
    aput-object v4, v0, v3

    .line 157
    .line 158
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 159
    .line 160
    .line 161
    throw v1
.end method
