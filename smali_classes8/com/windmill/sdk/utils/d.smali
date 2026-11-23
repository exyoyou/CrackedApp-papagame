.class public Lcom/windmill/sdk/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/windmill/sdk/utils/d;


# instance fields
.field private b:Lcom/windmill/sdk/WMCustomController;

.field private c:Lcom/czhj/sdk/common/mta/DeviceContext;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/utils/d;->b:Lcom/windmill/sdk/WMCustomController;

    return-object p0
.end method

.method public static a()Lcom/windmill/sdk/utils/d;
    .locals 2

    .line 2
    sget-object v0, Lcom/windmill/sdk/utils/d;->a:Lcom/windmill/sdk/utils/d;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/windmill/sdk/utils/d;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/windmill/sdk/utils/d;->a:Lcom/windmill/sdk/utils/d;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/windmill/sdk/utils/d;

    invoke-direct {v1}, Lcom/windmill/sdk/utils/d;-><init>()V

    sput-object v1, Lcom/windmill/sdk/utils/d;->a:Lcom/windmill/sdk/utils/d;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/windmill/sdk/utils/d;->a:Lcom/windmill/sdk/utils/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/WMCustomController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/windmill/sdk/utils/d;->b:Lcom/windmill/sdk/WMCustomController;

    return-void
.end method

.method public b()Lcom/czhj/sdk/common/mta/DeviceContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d;->c:Lcom/czhj/sdk/common/mta/DeviceContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/windmill/sdk/utils/d$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/windmill/sdk/utils/d$1;-><init>(Lcom/windmill/sdk/utils/d;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/windmill/sdk/utils/d;->c:Lcom/czhj/sdk/common/mta/DeviceContext;

    .line 12
    .line 13
    return-object v0
.end method
