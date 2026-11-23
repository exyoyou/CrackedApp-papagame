.class public Lcom/xinzhu/overmind/server/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/xinzhu/overmind/server/l; = null

.field public static final c:Ljava/lang/String; = "activity_manager"

.field public static final d:Ljava/lang/String; = "job_manager"

.field public static final e:Ljava/lang/String; = "notification_manager"

.field public static final f:Ljava/lang/String; = "package_manager"

.field public static final g:Ljava/lang/String; = "storage_manager"

.field public static final h:Ljava/lang/String; = "user_manager"

.field public static final i:Ljava/lang/String; = "file_share"

.field public static final j:Ljava/lang/String; = "Xposed_manager"

.field public static final k:Ljava/lang/String; = "v_service"

.field public static final l:Ljava/lang/String; = "account_manager"

.field public static final m:Ljava/lang/String; = "device_manager"

.field public static final n:Ljava/lang/String; = "content_manager"

.field public static final o:Ljava/lang/String; = "widget_manager"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 10
    .line 11
    const-string v1, "activity_manager"

    .line 12
    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 21
    .line 22
    const-string v1, "job_manager"

    .line 23
    .line 24
    invoke-static {}, Lcom/xinzhu/overmind/server/am/g;->get()Lcom/xinzhu/overmind/server/am/g;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 32
    .line 33
    const-string v1, "package_manager"

    .line 34
    .line 35
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 43
    .line 44
    const-string v1, "storage_manager"

    .line 45
    .line 46
    invoke-static {}, Lcom/xinzhu/overmind/server/os/i;->get()Lcom/xinzhu/overmind/server/os/i;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 54
    .line 55
    const-string v1, "user_manager"

    .line 56
    .line 57
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 65
    .line 66
    const-string v1, "notification_manager"

    .line 67
    .line 68
    invoke-static {}, Lcom/xinzhu/overmind/server/os/h;->get()Lcom/xinzhu/overmind/server/os/h;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 76
    .line 77
    const-string v1, "file_share"

    .line 78
    .line 79
    invoke-static {}, Lcom/xinzhu/overmind/server/os/g;->get()Lcom/xinzhu/overmind/server/os/g;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 87
    .line 88
    const-string v1, "account_manager"

    .line 89
    .line 90
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 98
    .line 99
    const-string v1, "device_manager"

    .line 100
    .line 101
    invoke-static {}, Lcom/xinzhu/overmind/server/os/f;->get()Lcom/xinzhu/overmind/server/os/f;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 109
    .line 110
    const-string v1, "widget_manager"

    .line 111
    .line 112
    invoke-static {}, Lcom/xinzhu/overmind/server/k;->get()Lcom/xinzhu/overmind/server/k;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 120
    .line 121
    const-string v1, "content_manager"

    .line 122
    .line 123
    invoke-static {}, Lcom/xinzhu/overmind/server/content/b;->get()Lcom/xinzhu/overmind/server/content/b;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public static a()Lcom/xinzhu/overmind/server/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/l;->b:Lcom/xinzhu/overmind/server/l;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/xinzhu/overmind/server/l;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/server/l;->b:Lcom/xinzhu/overmind/server/l;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/xinzhu/overmind/server/l;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/xinzhu/overmind/server/l;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/xinzhu/overmind/server/l;->b:Lcom/xinzhu/overmind/server/l;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/xinzhu/overmind/server/l;->b:Lcom/xinzhu/overmind/server/l;

    .line 25
    .line 26
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/l;->a()Lcom/xinzhu/overmind/server/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/xinzhu/overmind/server/l;->c(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/l;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/os/IBinder;

    .line 8
    .line 9
    return-object p1
.end method
