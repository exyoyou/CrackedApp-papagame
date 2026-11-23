.class public Lcom/xinzhu/overmind/server/content/b;
.super Lcom/xinzhu/overmind/server/content/a$b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/content/b$b;,
        Lcom/xinzhu/overmind/server/content/b$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "b"

.field private static final sService:Lcom/xinzhu/overmind/server/content/b;


# instance fields
.field private final mRootNode:Lcom/xinzhu/overmind/server/content/b$b;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/content/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/content/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/content/b;->sService:Lcom/xinzhu/overmind/server/content/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/content/a$b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/server/content/b$b;

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/content/b$b;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/xinzhu/overmind/server/content/b;->mRootNode:Lcom/xinzhu/overmind/server/content/b$b;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/xinzhu/overmind/server/content/b;->mSyncManagerLock:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/content/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/content/b;->sService:Lcom/xinzhu/overmind/server/content/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZII)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v9, p5

    .line 6
    .line 7
    sget-object v2, Lcom/xinzhu/overmind/server/content/b;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v10, 0x2

    .line 10
    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "Notifying update of "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, " for user "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " from observer "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-object/from16 v5, p2

    .line 43
    .line 44
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ", syncToNetwork "

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move/from16 v3, p4

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object/from16 v5, p2

    .line 59
    .line 60
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    .line 62
    .line 63
    move-result-wide v11

    .line 64
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v14, v1, Lcom/xinzhu/overmind/server/content/b;->mRootNode:Lcom/xinzhu/overmind/server/content/b$b;

    .line 70
    .line 71
    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    :try_start_1
    iget-object v2, v1, Lcom/xinzhu/overmind/server/content/b;->mRootNode:Lcom/xinzhu/overmind/server/content/b$b;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    move-object/from16 v3, p1

    .line 76
    .line 77
    move-object/from16 v5, p2

    .line 78
    .line 79
    move/from16 v6, p3

    .line 80
    .line 81
    move/from16 v7, p5

    .line 82
    .line 83
    move-object v8, v13

    .line 84
    invoke-virtual/range {v2 .. v8}, Lcom/xinzhu/overmind/server/content/b$b;->e(Landroid/net/Uri;ILandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    .line 85
    .line 86
    .line 87
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v3, 0x0

    .line 93
    const/4 v4, 0x0

    .line 94
    :goto_1
    if-ge v4, v2, :cond_4

    .line 95
    .line 96
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Lcom/xinzhu/overmind/server/content/b$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    .line 102
    :try_start_3
    iget-object v6, v5, Lcom/xinzhu/overmind/server/content/b$a;->b:Landroid/database/IContentObserver;

    .line 103
    .line 104
    iget-boolean v7, v5, Lcom/xinzhu/overmind/server/content/b$a;->c:Z

    .line 105
    .line 106
    invoke-interface {v6, v7, v0, v9}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 107
    .line 108
    .line 109
    sget-object v6, Lcom/xinzhu/overmind/server/content/b;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v7, "Notified "

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v7, v5, Lcom/xinzhu/overmind/server/content/b$a;->b:Landroid/database/IContentObserver;

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v7, " of update at "

    .line 133
    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catch_0
    :try_start_4
    iget-object v6, v1, Lcom/xinzhu/overmind/server/content/b;->mRootNode:Lcom/xinzhu/overmind/server/content/b$b;

    .line 142
    .line 143
    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 144
    :try_start_5
    iget-object v7, v5, Lcom/xinzhu/overmind/server/content/b$a;->b:Landroid/database/IContentObserver;

    .line 145
    .line 146
    invoke-interface {v7}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    iget-object v5, v5, Lcom/xinzhu/overmind/server/content/b$a;->a:Lcom/xinzhu/overmind/server/content/b$b;

    .line 151
    .line 152
    invoke-static {v5}, Lcom/xinzhu/overmind/server/content/b$b;->a(Lcom/xinzhu/overmind/server/content/b$b;)Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    const/4 v14, 0x0

    .line 161
    :goto_2
    if-ge v14, v8, :cond_2

    .line 162
    .line 163
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    check-cast v15, Lcom/xinzhu/overmind/server/content/b$b$a;

    .line 168
    .line 169
    iget-object v15, v15, Lcom/xinzhu/overmind/server/content/b$b$a;->b:Landroid/database/IContentObserver;

    .line 170
    .line 171
    invoke-interface {v15}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 172
    .line 173
    .line 174
    move-result-object v15

    .line 175
    if-ne v15, v7, :cond_1

    .line 176
    .line 177
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    add-int/lit8 v14, v14, -0x1

    .line 181
    .line 182
    add-int/lit8 v8, v8, -0x1

    .line 183
    .line 184
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_2
    monitor-exit v6

    .line 188
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :goto_4
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    goto :goto_4

    .line 195
    :cond_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :catchall_1
    move-exception v0

    .line 200
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 201
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 202
    :catchall_2
    move-exception v0

    .line 203
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    .line 205
    .line 206
    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/content/a$b;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    instance-of p2, p1, Ljava/lang/SecurityException;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    throw p1
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .locals 9

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/xinzhu/overmind/server/content/b;->mRootNode:Lcom/xinzhu/overmind/server/content/b$b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v5, p0, Lcom/xinzhu/overmind/server/content/b;->mRootNode:Lcom/xinzhu/overmind/server/content/b$b;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v7

    .line 14
    move-object v1, v5

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p3

    .line 17
    move v4, p2

    .line 18
    move v6, p5

    .line 19
    move v8, p4

    .line 20
    invoke-virtual/range {v1 .. v8}, Lcom/xinzhu/overmind/server/content/b$b;->c(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p2, "You must pass a valid uri and observer"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/server/content/b;->mRootNode:Lcom/xinzhu/overmind/server/content/b$b;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/content/b;->mRootNode:Lcom/xinzhu/overmind/server/content/b$b;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/content/b$b;->h(Landroid/database/IContentObserver;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "You must pass a valid observer"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method
