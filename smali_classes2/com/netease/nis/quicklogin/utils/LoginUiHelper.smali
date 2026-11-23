.class public Lcom/netease/nis/quicklogin/utils/LoginUiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;,
        Lcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;,
        Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;


# instance fields
.field private a:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

.field private b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

.field private c:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;

.field private d:Ljava/lang/String;


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

.method public static a()Lcom/netease/nis/quicklogin/utils/LoginUiHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-direct {v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;-><init>()V

    sput-object v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

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
    sget-object v0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1, p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->a(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 8
    iput-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    return-void
.end method

.method public a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
