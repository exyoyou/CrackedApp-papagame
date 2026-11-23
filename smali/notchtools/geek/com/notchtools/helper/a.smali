.class public Lnotchtools/geek/com/notchtools/helper/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lnotchtools/geek/com/notchtools/helper/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lnotchtools/geek/com/notchtools/helper/a;
    .locals 2

    .line 1
    sget-object v0, Lnotchtools/geek/com/notchtools/helper/a;->a:Lnotchtools/geek/com/notchtools/helper/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lnotchtools/geek/com/notchtools/helper/a;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lnotchtools/geek/com/notchtools/helper/a;->a:Lnotchtools/geek/com/notchtools/helper/a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lnotchtools/geek/com/notchtools/helper/a;

    .line 13
    .line 14
    invoke-direct {v1}, Lnotchtools/geek/com/notchtools/helper/a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lnotchtools/geek/com/notchtools/helper/a;->a:Lnotchtools/geek/com/notchtools/helper/a;

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
    sget-object v0, Lnotchtools/geek/com/notchtools/helper/a;->a:Lnotchtools/geek/com/notchtools/helper/a;

    .line 25
    .line 26
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lnotchtools/geek/com/notchtools/helper/c;->c()Lnotchtools/geek/com/notchtools/helper/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lnotchtools/geek/com/notchtools/helper/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "HUAWEI"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    const-string v0, "ro.miui.ui.version.name"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lnotchtools/geek/com/notchtools/helper/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    const-string v0, "ro.product.brand"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lnotchtools/geek/com/notchtools/helper/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    const-string v0, "ro.vivo.os.name"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lnotchtools/geek/com/notchtools/helper/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method
