.class public Lcom/xinzhu/overmind/server/ProcessRecord;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appThread:Landroid/os/IInterface;

.field public baseVUid:I

.field public callingVUid:I

.field public client:Lcom/xinzhu/overmind/client/c;

.field public final info:Landroid/content/pm/ApplicationInfo;

.field public initLock:Landroid/os/ConditionVariable;

.field public pid:I

.field public final processName:Ljava/lang/String;

.field public runWithPlugin:Z

.field public uid:I

.field public userId:I

.field public vpid:I

.field public vuid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/ProcessRecord$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/ProcessRecord$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/ProcessRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    .line 3
    iput-object p1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 4
    iput p3, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 5
    iput p4, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 7
    iput p5, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->callingVUid:I

    .line 8
    iput-object p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 10
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    .line 11
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->callingVUid:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 20
    .line 21
    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 22
    .line 23
    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 28
    .line 29
    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 34
    .line 35
    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 36
    .line 37
    if-ne v2, v3, :cond_2

    .line 38
    .line 39
    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    .line 40
    .line 41
    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    .line 42
    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 46
    .line 47
    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 48
    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    .line 52
    .line 53
    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    .line 54
    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 68
    .line 69
    iget-boolean p1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 70
    .line 71
    if-ne v2, p1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    .line 76
    :cond_3
    :goto_1
    return v1
.end method

.method public getCallingVUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->callingVUid:I

    .line 2
    .line 3
    return v0
.end method

.method public getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/ClientConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->c:Ljava/lang/String;

    .line 15
    .line 16
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 17
    .line 18
    iput v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->d:I

    .line 19
    .line 20
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 21
    .line 22
    iput v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->e:I

    .line 23
    .line 24
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    .line 25
    .line 26
    iput v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->f:I

    .line 27
    .line 28
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 29
    .line 30
    iput v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->g:I

    .line 31
    .line 32
    iput-object p0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->i:Landroid/os/IBinder;

    .line 33
    .line 34
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    .line 35
    .line 36
    iput v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->h:I

    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 39
    .line 40
    iput-boolean v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->j:Z

    .line 41
    .line 42
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 6
    .line 7
    invoke-static {v0}, Lcom/xinzhu/overmind/client/g;->c(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 13
    .line 14
    invoke-static {v0}, Lcom/xinzhu/overmind/client/g;->g(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x3

    .line 34
    aput-object v1, v0, v2

    .line 35
    .line 36
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x4

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x5

    .line 52
    aput-object v1, v0, v2

    .line 53
    .line 54
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x6

    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    return v0
.end method

.method public kill()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->callingVUid:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget-boolean p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 47
    .line 48
    int-to-byte p2, p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
