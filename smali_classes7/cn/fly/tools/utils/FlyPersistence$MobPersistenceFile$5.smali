.class Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/commons/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;


# direct methods
.method constructor <init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tools/utils/FileLocker;)Z
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 2
    .line 3
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 7
    .line 8
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 15
    .line 16
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 39
    .line 40
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;->a:Ljava/util/List;

    .line 41
    .line 42
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 43
    .line 44
    invoke-static {v2, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p1

    .line 64
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 65
    .line 66
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :try_start_1
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 74
    .line 75
    invoke-static {v0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    :catchall_1
    :cond_0
    :goto_1
    const/4 p1, 0x0

    .line 79
    return p1
.end method
