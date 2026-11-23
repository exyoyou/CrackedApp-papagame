.class public Lcn/fly/tools/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcn/fly/tools/utils/g;


# instance fields
.field private b:Lcn/fly/tools/utils/SharePrefrenceHelper;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcn/fly/tools/utils/SharePrefrenceHelper;

    .line 9
    .line 10
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lcn/fly/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    .line 18
    .line 19
    const-string v1, "dhp"

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->a(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    .line 26
    .line 27
    const-string v3, "016bCdd)a]bacdSdUdffhfbgifffdfchdfjfg"

    .line 28
    .line 29
    invoke-static {v3}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lcn/fly/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public static a()Lcn/fly/tools/utils/g;
    .locals 2

    .line 1
    sget-object v0, Lcn/fly/tools/utils/g;->a:Lcn/fly/tools/utils/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/fly/tools/utils/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/fly/tools/utils/g;->a:Lcn/fly/tools/utils/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/fly/tools/utils/g;

    invoke-direct {v1}, Lcn/fly/tools/utils/g;-><init>()V

    sput-object v1, Lcn/fly/tools/utils/g;->a:Lcn/fly/tools/utils/g;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcn/fly/tools/utils/g;->a:Lcn/fly/tools/utils/g;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "dhp_1"

    return-object v0
.end method

.method public static c()Z
    .locals 3

    .line 1
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dhp"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->isMpfFileExist(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getDoubleThrowable(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .line 18
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;J)J
    .locals 1

    .line 15
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getParcelThrowable(Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getParcelThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getParcelListThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getParcelMapThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putParcel(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Parcelable;J)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putParcel(Ljava/lang/String;Landroid/os/Parcelable;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;J)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putDouble(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Double;J)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putDouble(Ljava/lang/String;Ljava/lang/Double;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;J)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;J)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/fly/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putParcelList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;J)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putParcelList(Ljava/lang/String;Ljava/util/List;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putParcelMap(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;J)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putParcelMap(Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public a(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putParcelArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public a(Ljava/lang/String;[Landroid/os/Parcelable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "[TT;J)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/fly/tools/utils/SharePrefrenceHelper;->putParcelArray(Ljava/lang/String;[Landroid/os/Parcelable;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getBooleanThrowable(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getParcelArrayThrowable(Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getIntThrowable(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getLongThrowable(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getThrowable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getStringThrowable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getParcelMapThrowable(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getStringThrowable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getParcelListThrowable(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getBooleanThrowable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getParcelArrayThrowable(Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getLongThrowable(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public g(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getDoubleThrowable(Ljava/lang/String;)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcn/fly/tools/utils/SharePrefrenceHelper;->getThrowable(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/g;->b:Lcn/fly/tools/utils/SharePrefrenceHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcn/fly/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
