.class public Lcom/byazt/gq/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x42
    }
.end annotation


# static fields
.field public static a:Lcom/byazt/ou/x;

.field public static final c:Lorg/json/JSONObject;

.field public static da:Lcom/byazt/ou/tt;

.field public static gt:Lcom/byazt/pd/c;

.field public static gu:Lcom/byazt/ou/da;

.field public static i:Lcom/byazt/e/c;

.field public static m:Lcom/byazt/ou/qy;

.field public static my:Lcom/byazt/ou/nu;

.field public static n:Lcom/byazt/ou/u;

.field public static nu:Lcom/byazt/ou/z;

.field public static qy:Lcom/byazt/ou/gt;

.field public static rh:Lcom/byazt/ou/yp;

.field public static rl:Lcom/byazt/ou/rh;

.field public static sl:Lcom/byazt/s/i;

.field public static sp:Lcom/byazt/ou/i;

.field public static t:Lcom/byazt/ou/uj;

.field public static tt:Landroid/content/Context;

.field public static u:Lcom/byazt/ou/n;

.field public static uj:Lcom/byazt/ou/ve;

.field public static ve:Lcom/byazt/ou/sp;

.field public static x:Lcom/byazt/ou/sl;

.field public static yp:Lcom/byazt/ou/m;

.field public static z:Lcom/byazt/ou/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/gq/t;->c:Lorg/json/JSONObject;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lcom/byazt/s/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->sl:Lcom/byazt/s/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/gq/t$2;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/gq/t$2;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/gq/t;->sl:Lcom/byazt/s/i;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/byazt/gq/t;->sl:Lcom/byazt/s/i;

    .line 13
    .line 14
    return-object v0
.end method

.method public static c()Lcom/byazt/ou/sp;
    .locals 1

    .line 12
    sget-object v0, Lcom/byazt/gq/t;->ve:Lcom/byazt/ou/sp;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/byazt/gq/t;->tt:Landroid/content/Context;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/byazt/e/c;)V
    .locals 0
    .param p0    # Lcom/byazt/e/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    sput-object p0, Lcom/byazt/gq/t;->i:Lcom/byazt/e/c;

    return-void
.end method

.method public static c(Lcom/byazt/ou/da;)V
    .locals 0

    .line 18
    sput-object p0, Lcom/byazt/gq/t;->gu:Lcom/byazt/ou/da;

    return-void
.end method

.method public static c(Lcom/byazt/ou/gt;)V
    .locals 0

    .line 17
    sput-object p0, Lcom/byazt/gq/t;->qy:Lcom/byazt/ou/gt;

    return-void
.end method

.method public static c(Lcom/byazt/ou/i;)V
    .locals 0
    .param p0    # Lcom/byazt/ou/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    sput-object p0, Lcom/byazt/gq/t;->sp:Lcom/byazt/ou/i;

    return-void
.end method

.method public static c(Lcom/byazt/ou/rh;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/byazt/gq/t;->rl:Lcom/byazt/ou/rh;

    return-void
.end method

.method public static c(Lcom/byazt/ou/sl;)V
    .locals 0
    .param p0    # Lcom/byazt/ou/sl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    sput-object p0, Lcom/byazt/gq/t;->x:Lcom/byazt/ou/sl;

    return-void
.end method

.method public static c(Lcom/byazt/ou/sp;)V
    .locals 0
    .param p0    # Lcom/byazt/ou/sp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    sput-object p0, Lcom/byazt/gq/t;->ve:Lcom/byazt/ou/sp;

    return-void
.end method

.method public static c(Lcom/byazt/ou/tt;)V
    .locals 0
    .param p0    # Lcom/byazt/ou/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    sput-object p0, Lcom/byazt/gq/t;->da:Lcom/byazt/ou/tt;

    return-void
.end method

.method public static c(Lcom/byazt/ou/u;)V
    .locals 0
    .param p0    # Lcom/byazt/ou/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    sput-object p0, Lcom/byazt/gq/t;->n:Lcom/byazt/ou/u;

    return-void
.end method

.method public static c(Lcom/byazt/ou/ve;)V
    .locals 0
    .param p0    # Lcom/byazt/ou/ve;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    sput-object p0, Lcom/byazt/gq/t;->uj:Lcom/byazt/ou/ve;

    return-void
.end method

.method public static c(Lcom/byazt/ou/x;)V
    .locals 0
    .param p0    # Lcom/byazt/ou/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    sput-object p0, Lcom/byazt/gq/t;->a:Lcom/byazt/ou/x;

    return-void
.end method

.method public static c(Lcom/byazt/pd/c;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/byazt/gq/t;->gt:Lcom/byazt/pd/c;

    return-void
.end method

.method public static c(Lcom/byazt/s/ve;)V
    .locals 1

    .line 14
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/z/uj;->c(Lcom/byazt/s/ve;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/z/uj;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static da()Lcom/byazt/e/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->i:Lcom/byazt/e/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/e/c$c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/e/c$c;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/e/c$c;->c()Lcom/byazt/e/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/byazt/gq/t;->i:Lcom/byazt/e/c;

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/byazt/gq/t;->i:Lcom/byazt/e/c;

    .line 17
    .line 18
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->tt:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "Context is null"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public static gr()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->ve:Lcom/byazt/ou/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/gq/t;->a:Lcom/byazt/ou/x;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/byazt/gq/t;->x:Lcom/byazt/ou/sl;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/byazt/gq/t;->da:Lcom/byazt/ou/tt;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/byazt/gq/t;->rl:Lcom/byazt/ou/rh;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public static gt()Lcom/byazt/pd/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->gt:Lcom/byazt/pd/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/gq/t$4;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/gq/t$4;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/gq/t;->gt:Lcom/byazt/pd/c;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/byazt/gq/t;->gt:Lcom/byazt/pd/c;

    .line 13
    .line 14
    return-object v0
.end method

.method public static gu()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1d

    .line 14
    .line 15
    if-lt v1, v2, :cond_2

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lz0/a;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    :cond_0
    if-le v0, v2, :cond_2

    .line 26
    .line 27
    :cond_1
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "default_save_dir_name"

    .line 68
    .line 69
    const-string v3, "ByteDownload"

    .line 70
    .line 71
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    return-object v0

    .line 83
    :catchall_0
    const/4 v0, 0x0

    .line 84
    return-object v0
.end method

.method public static i()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->x:Lcom/byazt/ou/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ou/sl;->c()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/byazt/gq/t;->x:Lcom/byazt/ou/sl;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/byazt/ou/sl;->c()Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/gq/t;->c:Lorg/json/JSONObject;

    .line 20
    .line 21
    return-object v0
.end method

.method public static m()Lcom/byazt/ou/n;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->u:Lcom/byazt/ou/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public static my()Lcom/byazt/ou/qy;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->m:Lcom/byazt/ou/qy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static n()Lcom/byazt/ou/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->sp:Lcom/byazt/ou/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/uw/tt;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/uw/tt;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/gq/t;->sp:Lcom/byazt/ou/i;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/byazt/gq/t;->sp:Lcom/byazt/ou/i;

    .line 13
    .line 14
    return-object v0
.end method

.method public static nu()Lcom/byazt/ou/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->z:Lcom/byazt/ou/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public static qy()Lcom/byazt/ou/da;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->gu:Lcom/byazt/ou/da;

    .line 2
    .line 3
    return-object v0
.end method

.method public static rh()Lcom/byazt/ou/rh;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->rl:Lcom/byazt/ou/rh;

    .line 2
    .line 3
    return-object v0
.end method

.method public static rl()Lcom/byazt/ou/gt;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->qy:Lcom/byazt/ou/gt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/gq/t$5;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/gq/t$5;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/gq/t;->qy:Lcom/byazt/ou/gt;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/byazt/gq/t;->qy:Lcom/byazt/ou/gt;

    .line 13
    .line 14
    return-object v0
.end method

.method public static sl()Lcom/byazt/ou/yp;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->rh:Lcom/byazt/ou/yp;

    .line 2
    .line 3
    return-object v0
.end method

.method public static sp()Lcom/byazt/ou/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->yp:Lcom/byazt/ou/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public static t()Lcom/byazt/ou/tt;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->da:Lcom/byazt/ou/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public static tt()Lcom/byazt/ou/ve;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/byazt/gq/t;->uj:Lcom/byazt/ou/ve;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/byazt/gq/t$1;

    invoke-direct {v0}, Lcom/byazt/gq/t$1;-><init>()V

    sput-object v0, Lcom/byazt/gq/t;->uj:Lcom/byazt/ou/ve;

    .line 5
    :cond_0
    sget-object v0, Lcom/byazt/gq/t;->uj:Lcom/byazt/ou/ve;

    return-object v0
.end method

.method public static tt(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->tt:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/byazt/gq/t;->tt:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static u()Lcom/byazt/ou/z;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->nu:Lcom/byazt/ou/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public static uj()Lcom/byazt/ou/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->a:Lcom/byazt/ou/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public static ve()Lcom/byazt/ou/u;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->n:Lcom/byazt/ou/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/uw/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/uw/c;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/gq/t;->n:Lcom/byazt/ou/u;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/byazt/gq/t;->n:Lcom/byazt/ou/u;

    .line 13
    .line 14
    return-object v0
.end method

.method public static x()Lcom/byazt/ou/nu;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->my:Lcom/byazt/ou/nu;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/gq/t$3;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/gq/t$3;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/gq/t;->my:Lcom/byazt/ou/nu;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/byazt/gq/t;->my:Lcom/byazt/ou/nu;

    .line 13
    .line 14
    return-object v0
.end method

.method public static yp()Ljava/lang/String;
    .locals 1

    const-string v0, "1.7.0"

    return-object v0
.end method

.method public static z()Lcom/byazt/ou/uj;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/t;->t:Lcom/byazt/ou/uj;

    .line 2
    .line 3
    return-object v0
.end method
