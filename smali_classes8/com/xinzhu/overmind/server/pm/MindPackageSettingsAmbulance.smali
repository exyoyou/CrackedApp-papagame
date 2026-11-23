.class public Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;",
            ">;"
        }
    .end annotation
.end field

.field static final i:Lcom/xinzhu/overmind/server/pm/MindPackageUserState;


# instance fields
.field public b:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

.field public c:I

.field public d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

.field public e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Z

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/pm/MindPackageUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->i:Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 7
    .line 8
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->e:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->f:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->g:Z

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->e:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->f:Z

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->g:Z

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MindPackageSettingsAmbulance read class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    invoke-direct {v2, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->b:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->c:I

    .line 15
    const-class v2, Lcom/xinzhu/overmind/entity/pm/InstallOption;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/entity/pm/InstallOption;

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->e:Ljava/util/HashSet;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->f:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->g:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    :goto_2
    if-ge v1, v0, :cond_2

    .line 21
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 22
    const-class v3, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 23
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private B(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

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
    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageUserState;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;-><init>()V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;-><init>(Lcom/xinzhu/overmind/server/pm/MindPackageUserState;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    .line 40
    .line 41
    :cond_1
    return-object v0
.end method

.method public D(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public E()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->use32BitMainPackage()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->K()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->L()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :goto_0
    const/4 v1, 0x1

    .line 38
    :cond_2
    return v1

    .line 39
    :cond_3
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->g:Z

    .line 40
    .line 41
    return v0
.end method

.method public F()Z
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
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->b:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->n:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->Q(Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_1
    invoke-virtual {p0, v0, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v0, v4}, Lcom/xinzhu/overmind/utils/l;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    new-array v0, v2, [Ljava/io/Closeable;

    .line 42
    .line 43
    aput-object v4, v0, v3

    .line 44
    .line 45
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 46
    .line 47
    .line 48
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    return v2

    .line 50
    :catchall_0
    move-exception v5

    .line 51
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    .line 59
    .line 60
    new-array v0, v2, [Ljava/io/Closeable;

    .line 61
    .line 62
    aput-object v4, v0, v3

    .line 63
    .line 64
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 65
    .line 66
    .line 67
    monitor-exit p0

    .line 68
    return v3

    .line 69
    :catchall_1
    move-exception v1

    .line 70
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 71
    .line 72
    .line 73
    new-array v0, v2, [Ljava/io/Closeable;

    .line 74
    .line 75
    aput-object v4, v0, v3

    .line 76
    .line 77
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :catchall_2
    move-exception v0

    .line 82
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 83
    throw v0
.end method

.method public G(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->B(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-boolean p1, p2, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->d:Z

    .line 6
    .line 7
    return-void
.end method

.method public H(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->B(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-boolean p1, p2, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    .line 6
    .line 7
    return-void
.end method

.method public I(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isServerProcess()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->f:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->g:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v0, "calling setRunWithPlugin not in server process!"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public J(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->B(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-boolean p1, p2, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->c:Z

    .line 6
    .line 7
    return-void
.end method

.method public K()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->e:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "armeabi"

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const-string v2, "armeabi-v7a"

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public L()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->e:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "arm64-v8a"

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->use32BitMainPackage()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->L()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->K()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->e:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->d:Z

    .line 6
    .line 7
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    .line 6
    .line 7
    return p1
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->use32BitMainPackage()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    .line 25
    .line 26
    :goto_0
    return-object v0

    .line 27
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->use32BitMainPackage()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->K()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    sget-object v0, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    .line 47
    .line 48
    :goto_1
    return-object v0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->L()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    sget-object v0, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    sget-object v0, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    .line 59
    .line 60
    :goto_2
    return-object v0

    .line 61
    :cond_5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->use32BitMainPackage()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->g:Z

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    sget-object v0, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_6
    sget-object v0, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    .line 79
    .line 80
    :goto_3
    return-object v0

    .line 81
    :cond_7
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->g:Z

    .line 82
    .line 83
    if-eqz v0, :cond_8

    .line 84
    .line 85
    sget-object v0, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_8
    sget-object v0, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    .line 89
    .line 90
    :goto_4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->b:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->c:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->e:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->f:Z

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->g:Z

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/os/Parcelable;

    .line 74
    .line 75
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public x(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->c:Z

    .line 6
    .line 7
    return p1
.end method

.method public y()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
