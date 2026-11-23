.class public Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/xinzhu/overmind/server/pm/MindPackage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->b:Ljava/lang/String;

    .line 7
    const-class v0, Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage;

    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->c:Lcom/xinzhu/overmind/server/pm/MindPackage;

    return-void
.end method

.method public constructor <init>(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->c:Lcom/xinzhu/overmind/server/pm/MindPackage;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {p0}, Lcom/xinzhu/overmind/a;->c0(Ljava/lang/String;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/xinzhu/overmind/utils/l;->v(Ljava/io/File;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    array-length v2, p0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Landroid/util/AtomicFile;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->c0(Ljava/lang/String;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :try_start_1
    invoke-virtual {p0, v0, v3}, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v0, v4}, Lcom/xinzhu/overmind/utils/l;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    .line 38
    .line 39
    new-array v0, v2, [Ljava/io/Closeable;

    .line 40
    .line 41
    aput-object v4, v0, v3

    .line 42
    .line 43
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 44
    .line 45
    .line 46
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 47
    return v2

    .line 48
    :catchall_0
    move-exception v5

    .line 49
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 56
    .line 57
    .line 58
    new-array v0, v2, [Ljava/io/Closeable;

    .line 59
    .line 60
    aput-object v4, v0, v3

    .line 61
    .line 62
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return v3

    .line 67
    :catchall_1
    move-exception v1

    .line 68
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 69
    .line 70
    .line 71
    new-array v0, v2, [Ljava/io/Closeable;

    .line 72
    .line 73
    aput-object v4, v0, v3

    .line 74
    .line 75
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :catchall_2
    move-exception v0

    .line 80
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 81
    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->c:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
