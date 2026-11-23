.class public Lcom/xinzhu/overmind/server/os/f;
.super Lcom/xinzhu/overmind/server/os/a$b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/g;


# static fields
.field public static final TAG:Ljava/lang/String; = "f"

.field private static final sService:Lcom/xinzhu/overmind/server/os/f;


# instance fields
.field private final mDeviceInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/os/MindDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/os/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/os/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/os/f;->sService:Lcom/xinzhu/overmind/server/os/f;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/os/a$b;-><init>()V

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
    iput-object v0, p0, Lcom/xinzhu/overmind/server/os/f;->mDeviceInfoMap:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/os/f;->mGlobalEnable:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/os/f;->loadPersistence()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/os/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/os/f;->sService:Lcom/xinzhu/overmind/server/os/f;

    .line 2
    .line 3
    return-object v0
.end method

.method private getOrGenerateMindDeviceInfoLocked(I)Lcom/xinzhu/overmind/server/os/MindDeviceInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/os/f;->mDeviceInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->b()Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/xinzhu/overmind/server/os/f;->mDeviceInfoMap:Ljava/util/Map;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/os/f;->savePersistence()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDeviceInfo(I)Lcom/xinzhu/overmind/server/os/MindDeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/os/f;->mDeviceInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/os/f;->mGlobalEnable:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/os/f;->getOrGenerateMindDeviceInfoLocked(I)Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-exit v0

    .line 13
    return-object p1

    .line 14
    :cond_0
    monitor-exit v0

    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method public loadPersistence()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/a;->z()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->v(Ljava/io/File;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    array-length v2, v1

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/xinzhu/overmind/server/os/f;->mDeviceInfoMap:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_0
    iput-boolean v1, p0, Lcom/xinzhu/overmind/server/os/f;->mGlobalEnable:Z

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_1
    if-ge v3, v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-class v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    .line 69
    .line 70
    iget-object v5, p0, Lcom/xinzhu/overmind/server/os/f;->mDeviceInfoMap:Ljava/util/Map;

    .line 71
    .line 72
    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_1
    move-exception v1

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 88
    .line 89
    .line 90
    throw v1
.end method

.method public savePersistence()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/AtomicFile;

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/a;->z()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :try_start_0
    iget-boolean v5, p0, Lcom/xinzhu/overmind/server/os/f;->mGlobalEnable:Z

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v5, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    .line 26
    .line 27
    iget-object v5, p0, Lcom/xinzhu/overmind/server/os/f;->mDeviceInfoMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-object v5, p0, Lcom/xinzhu/overmind/server/os/f;->mDeviceInfoMap:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Ljava/util/Map$Entry;

    .line 57
    .line 58
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Landroid/os/Parcelable;

    .line 76
    .line 77
    invoke-virtual {v0, v6, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v0, v4}, Lcom/xinzhu/overmind/utils/l;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    .line 96
    .line 97
    new-array v0, v2, [Ljava/io/Closeable;

    .line 98
    .line 99
    aput-object v4, v0, v3

    .line 100
    .line 101
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_0
    move-exception v5

    .line 106
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    .line 114
    .line 115
    new-array v0, v2, [Ljava/io/Closeable;

    .line 116
    .line 117
    aput-object v4, v0, v3

    .line 118
    .line 119
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    return-void

    .line 123
    :catchall_1
    move-exception v1

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    .line 126
    .line 127
    new-array v0, v2, [Ljava/io/Closeable;

    .line 128
    .line 129
    aput-object v4, v0, v3

    .line 130
    .line 131
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 132
    .line 133
    .line 134
    throw v1
.end method

.method public setVirtualDeviceStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/xinzhu/overmind/server/os/f;->mGlobalEnable:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/os/f;->savePersistence()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public updateMindDeviceInfo(ILcom/xinzhu/overmind/server/os/MindDeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/os/f;->mDeviceInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/os/f;->mDeviceInfoMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/os/f;->savePersistence()V

    .line 16
    .line 17
    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method
