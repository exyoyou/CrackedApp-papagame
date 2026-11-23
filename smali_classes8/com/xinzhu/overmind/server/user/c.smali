.class public Lcom/xinzhu/overmind/server/user/c;
.super Lcom/xinzhu/overmind/server/user/a$b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/g;


# static fields
.field private static sService:Lcom/xinzhu/overmind/server/user/c;


# instance fields
.field private mUserListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/user/b;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserLock:Ljava/lang/Object;

.field public final mUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/user/MindUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/user/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/user/c;->sService:Lcom/xinzhu/overmind/server/user/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/user/a$b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserListeners:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method

.method private createUserLocked(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/user/MindUserInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    .line 7
    .line 8
    sget-object v1, Lcom/xinzhu/overmind/server/user/MindUserStatus;->ENABLE:Lcom/xinzhu/overmind/server/user/MindUserStatus;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/xinzhu/overmind/server/user/MindUserInfo;->c:Lcom/xinzhu/overmind/server/user/MindUserStatus;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/user/c;->saveUserInfoLocked()V

    .line 25
    .line 26
    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUserListeners:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/xinzhu/overmind/server/user/b;

    .line 45
    .line 46
    invoke-interface {v2, p1}, Lcom/xinzhu/overmind/server/user/b;->c(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lna/d;->a()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-static {p1}, Lna/d;->d(I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    if-eqz p1, :cond_2

    .line 60
    .line 61
    new-instance v1, Ljava/lang/Thread;

    .line 62
    .line 63
    new-instance v2, Lcom/xinzhu/overmind/server/user/c$a;

    .line 64
    .line 65
    invoke-direct {v2, p0, p1}, Lcom/xinzhu/overmind/server/user/c$a;-><init>(Lcom/xinzhu/overmind/server/user/c;I)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-object v0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p1
.end method

.method public static get()Lcom/xinzhu/overmind/server/user/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/user/c;->sService:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    return-object v0
.end method

.method private saveUserInfoLocked()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/core/util/AtomicFile;

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/a;->Z()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    :try_start_1
    invoke-virtual {v1}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v0, v4}, Lcom/xinzhu/overmind/utils/l;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_2
    new-array v1, v3, [Ljava/io/Closeable;

    .line 42
    .line 43
    aput-object v4, v1, v2

    .line 44
    .line 45
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v5

    .line 52
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v4}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_4
    new-array v1, v3, [Ljava/io/Closeable;

    .line 59
    .line 60
    aput-object v4, v1, v2

    .line 61
    .line 62
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_1
    :try_start_5
    new-array v3, v3, [Ljava/io/Closeable;

    .line 70
    .line 71
    aput-object v4, v3, v2

    .line 72
    .line 73
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 74
    .line 75
    .line 76
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    :catchall_1
    move-exception v1

    .line 78
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 79
    .line 80
    .line 81
    throw v1
.end method

.method private scanUserL()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/a;->Z()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    .line 23
    .line 24
    new-array v1, v2, [Ljava/io/Closeable;

    .line 25
    .line 26
    aput-object v4, v1, v3

    .line 27
    .line 28
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    .line 34
    .line 35
    invoke-static {}, Lcom/xinzhu/overmind/a;->Z()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_4
    invoke-static {v5}, Lcom/xinzhu/overmind/utils/l;->w(Ljava/io/InputStream;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    array-length v6, v4

    .line 47
    invoke-virtual {v1, v4, v3, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    .line 52
    .line 53
    sget-object v4, Lcom/xinzhu/overmind/server/user/MindUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 59
    if-nez v4, :cond_1

    .line 60
    .line 61
    :try_start_5
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 62
    .line 63
    .line 64
    new-array v1, v2, [Ljava/io/Closeable;

    .line 65
    .line 66
    aput-object v5, v1, v3

    .line 67
    .line 68
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 69
    .line 70
    .line 71
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 72
    return-void

    .line 73
    :cond_1
    :try_start_6
    iget-object v6, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 74
    .line 75
    monitor-enter v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 76
    :try_start_7
    iget-object v7, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_2

    .line 90
    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    check-cast v7, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 96
    .line 97
    iget-object v8, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 98
    .line 99
    iget v9, v7, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    .line 100
    .line 101
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 110
    :try_start_8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    .line 112
    .line 113
    new-array v1, v2, [Ljava/io/Closeable;

    .line 114
    .line 115
    aput-object v5, v1, v3

    .line 116
    .line 117
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_0
    move-exception v4

    .line 122
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 123
    :try_start_a
    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 124
    :catch_0
    move-exception v4

    .line 125
    goto :goto_1

    .line 126
    :catchall_1
    move-exception v5

    .line 127
    move-object v10, v5

    .line 128
    move-object v5, v4

    .line 129
    move-object v4, v10

    .line 130
    goto :goto_3

    .line 131
    :catch_1
    move-exception v5

    .line 132
    move-object v10, v5

    .line 133
    move-object v5, v4

    .line 134
    move-object v4, v10

    .line 135
    :goto_1
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 136
    .line 137
    .line 138
    :try_start_c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    .line 140
    .line 141
    new-array v1, v2, [Ljava/io/Closeable;

    .line 142
    .line 143
    aput-object v5, v1, v3

    .line 144
    .line 145
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 146
    .line 147
    .line 148
    :goto_2
    monitor-exit v0

    .line 149
    return-void

    .line 150
    :catchall_2
    move-exception v4

    .line 151
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    .line 153
    .line 154
    new-array v1, v2, [Ljava/io/Closeable;

    .line 155
    .line 156
    aput-object v5, v1, v3

    .line 157
    .line 158
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 159
    .line 160
    .line 161
    throw v4

    .line 162
    :catchall_3
    move-exception v1

    .line 163
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 164
    throw v1
.end method


# virtual methods
.method public createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/user/c;->getUserInfo(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    monitor-exit v0

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/user/c;->createUserLocked(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    monitor-exit v0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public deleteUser(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->deleteUser(I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/user/c;->saveUserInfoLocked()V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->X(I)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/xinzhu/overmind/server/user/c;->mUserListeners:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/xinzhu/overmind/server/user/b;

    .line 50
    .line 51
    invoke-interface {v3, p1}, Lcom/xinzhu/overmind/server/user/b;->a(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v3, p1}, Lcom/xinzhu/overmind/server/user/b;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    return-void

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    :try_start_5
    throw p1

    .line 68
    :catchall_2
    move-exception p1

    .line 69
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 70
    throw p1
.end method

.method public exists(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public getAllUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/user/MindUserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public getUserInfo(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public getUsers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/user/MindUserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 30
    .line 31
    iget v4, v3, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    .line 32
    .line 33
    if-ltz v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v0

    .line 40
    return-object v1

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v1
.end method

.method public registerListener(Lcom/xinzhu/overmind/server/user/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUserListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public removeListener(Lcom/xinzhu/overmind/server/user/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUserListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public systemReady()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/user/c;->scanUserL()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
