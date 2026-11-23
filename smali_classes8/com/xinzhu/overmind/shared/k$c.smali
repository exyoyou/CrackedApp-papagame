.class public final Lcom/xinzhu/overmind/shared/k$c;
.super Lcom/xinzhu/overmind/client/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/shared/k;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xinzhu/overmind/shared/k;

.field final synthetic c:Z

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xinzhu/overmind/shared/k;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/shared/k$c;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/shared/k$c;->b:Lcom/xinzhu/overmind/shared/k;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/xinzhu/overmind/shared/k$c;->c:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/xinzhu/overmind/shared/k$c;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/a;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getHostPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/k$c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getPackageName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getMainAuthorityPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "com.join.android.app.mgsim.wufun"

    return-object v0
.end method

.method public getMainPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.join.android.app.mgsim.wufun"

    return-object v0
.end method

.method public getNotificationLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationSmallIcon()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPluginAuthorityPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "com.join.android.app.mgsim.wufun.addon"

    return-object v0
.end method

.method public getPluginPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.join.android.app.mgsim.wufun.addon"

    return-object v0
.end method

.method public ifDisableDaemonService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ifDisablePluginPackageAutoManage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ifDisableVirtualDeviceForPackage(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "packageName"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "userId"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    :try_start_0
    const-string p2, "com.join.android.app.mgsim.wufun.virtual.service.dbprovider"

    .line 18
    .line 19
    const-string v1, "miniGameInfo"

    .line 20
    .line 21
    invoke-static {p2, v1, p1, v0}, Lcom/xinzhu/overmind/shared/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 p2, 0x1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const-string v0, "isMiniGame"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    return p2

    .line 42
    :cond_0
    sget-object v0, Lcom/join/mgps/va/overmind/VApp;->Companion:Lcom/join/mgps/va/overmind/VApp$a;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/VApp$a;->b()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    return p2

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const-string v1, "vm_device_switch"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 p2, 0x0

    .line 64
    :goto_1
    return p2
.end method

.method public isHideRoot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/shared/k$c;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHideXposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/shared/k$c;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPluginValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/k$c;->b:Lcom/xinzhu/overmind/shared/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/shared/k$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/shared/k;->m(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public use32BitMainPackage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useRandomGeneratedVirtualDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
