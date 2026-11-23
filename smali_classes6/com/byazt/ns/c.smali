.class public final Lcom/byazt/ns/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf3,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ns/c$c;,
        Lcom/byazt/ns/c$tt;
    }
.end annotation


# static fields
.field public static final c:Z


# instance fields
.field public tt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Lcom/byazt/ns/c$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/lt/tt;->tt()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/byazt/ns/c;->c:Z

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/byazt/ns/c;->tt:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p0}, Lcom/byazt/ns/c;->tt()Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/ns/c$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ns/c;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/ns/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/ns/c$tt;->c()Lcom/byazt/ns/c;

    move-result-object v0

    return-object v0
.end method

.method private static ve()Lcom/byazt/byh/ve;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/oy/tt;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v1, v2, v3}, Lcom/byazt/nr/sp;->tt(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "proxy_cache"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    .line 26
    .line 27
    :cond_0
    :try_start_0
    new-instance v1, Lcom/byazt/byh/ve;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/byazt/byh/ve;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    .line 31
    .line 32
    const-wide/32 v2, 0x6400000

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v1, v2, v3}, Lcom/byazt/byh/ve;->c(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    move-object v3, v1

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    .line 43
    :goto_0
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    move-object v1, v3

    .line 47
    :goto_1
    return-object v1
.end method


# virtual methods
.method public c(Lcom/byazt/jzl/a;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ns/c;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/ns/c;->ve:Lcom/byazt/ns/c$c;

    invoke-virtual {v0, p1}, Lcom/byazt/ns/c$c;->c(Lcom/byazt/jzl/a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tt()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ns/c;->ve:Lcom/byazt/ns/c$c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/byazt/ns/c;->ve()Lcom/byazt/byh/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    invoke-static {v1}, Lcom/byazt/utw/uj;->c(Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/byazt/utw/uj;->c(I)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    new-instance v3, Lcom/byazt/ns/c$c;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/byazt/ns/c$c;-><init>(Lcom/byazt/ns/c;)V

    .line 24
    .line 25
    .line 26
    iput-object v3, p0, Lcom/byazt/ns/c;->ve:Lcom/byazt/ns/c$c;

    .line 27
    .line 28
    const-string v4, "csj_v_c_preloader"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/byazt/ns/c;->ve:Lcom/byazt/ns/c$c;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/byazt/jtc/ve;->start()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/byazt/oy/tt;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v0, v3}, Lcom/byazt/utw/uj;->c(Lcom/byazt/byh/ve;Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/byazt/utw/ve;->c()Lcom/byazt/utw/ve;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/byazt/utw/ve;->c()Lcom/byazt/utw/ve;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const v2, 0x9fffff

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/byazt/utw/ve;->c(I)V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :catch_0
    return v2
.end method
