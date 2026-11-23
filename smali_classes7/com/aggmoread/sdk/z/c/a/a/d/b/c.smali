.class public Lcom/aggmoread/sdk/z/c/a/a/d/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/b/c$i;,
        Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Class;

.field private static b:Ljava/lang/String;

.field private static c:Z

.field private static d:Z

.field public static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->e:Ljava/util/HashMap;

    const-string v0, "https://s01.peplle.cn/"

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->g:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "MDY2NGRhOTdmZDhmYjFjOWZkMDFkZmQyYmJmMWRlODQ="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/e/b;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hs_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/e/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .line 2
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Handler$Callback;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->d(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;)V
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
    .locals 0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 8
    sput-boolean p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->c:Z

    return p0
.end method

.method public static b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->b()Ldalvik/system/DexClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ahpm_tag"

    const-string v1, "hgs n,return "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$f;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$f;-><init>()V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->g(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method static synthetic b(Landroid/os/Handler$Callback;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->f(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method private static b(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;)V
    .locals 9

    .line 3
    const-string v0, "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"

    const-string v1, "ahpm_tag"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a()Lcom/aggmoread/sdk/z/c/a/a/e/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->c()Lcom/aggmoread/sdk/z/c/a/a/e/u/c;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/aggmoread/sdk/z/c/a/a/e/u/c;->a:Lcom/aggmoread/sdk/z/c/a/a/e/u/a;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/c/a/a/e/u/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "lhp bl "

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/e/u/c;->a:Lcom/aggmoread/sdk/z/c/a/a/e/u/a;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/e/u/a;->b:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lhp v "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", fileName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    sput-boolean v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->c:Z

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "enter def"

    invoke-static {v1, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, v0, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/e/b;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$b;

    invoke-direct {v4, p0, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a(Lcom/aggmoread/sdk/z/c/a/a/e/b$c;)V

    return-void

    :cond_2
    const-string v0, "d b null "

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_pl_err_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v0, v5, v6}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v3, " pl rep "

    invoke-static {v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v7, v5

    if-ltz v3, :cond_4

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v0, v5, v6}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->b(Ljava/lang/String;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "svs_20102911"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#gvs_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#pvs_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#uvs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#dvs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v4, 0x3bb96dc0

    invoke-direct {v3, v4, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;-><init>()V

    invoke-virtual {v0, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lhp err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-string v0, "lhp end "

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
    .locals 5

    .line 5
    const-string v0, "ahpm_tag"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "req gpf"

    invoke-static {v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "hps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$a;

    invoke-direct {v3, p2, p1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/e/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;)V

    invoke-static {v2, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r vcn err "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 6
    const-string v0, "ahpm_tag"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lhd enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lhd enter df "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->b()Ldalvik/system/DexClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->s:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :cond_0
    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->e:Ljava/util/HashMap;

    new-instance v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$c;

    invoke-direct {v4}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$c;-><init>()V

    invoke-static {v2, v1, v3, v4, p0}, Lcom/aggmoread/sdk/z/c/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    sput-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->a:Ljava/lang/Class;

    if-eqz p0, :cond_2

    const-string p0, "lhd success "

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "lhd empty "

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lhd e "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 7
    sput-boolean p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->d:Z

    return p0
.end method

.method public static c(Landroid/os/Handler$Callback;)V
    .locals 3

    sget-boolean v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "ahpm_tag"

    const-string v1, "hgpk success, return"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->h(Landroid/os/Handler$Callback;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$d;

    invoke-direct {v2, p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$d;-><init>(Landroid/os/Handler$Callback;J)V

    invoke-static {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->g(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method private static d(Landroid/os/Handler$Callback;)V
    .locals 8

    const-string v0, "ahpm_tag"

    :try_start_0
    const-string v1, "hgpki enter"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "invoke"

    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, [Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->b()Ldalvik/system/DexClassLoader;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$e;

    invoke-direct {v4}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$e;-><init>()V

    const/4 v5, 0x3

    aput-object v4, v2, v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v2, v3, v7

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hgpki end"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hgpki err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->h(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public static e(Landroid/os/Handler$Callback;)V
    .locals 3

    sget-boolean v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "ahpm_tag"

    const-string v1, "hkspk success, return"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->h(Landroid/os/Handler$Callback;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$g;

    invoke-direct {v2, p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$g;-><init>(Landroid/os/Handler$Callback;J)V

    invoke-static {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->g(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method private static f(Landroid/os/Handler$Callback;)V
    .locals 8

    const-string v0, "ahpm_tag"

    :try_start_0
    const-string v1, "hkspki enter"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "invoke"

    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, [Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    new-instance v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$h;

    invoke-direct {v4}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$h;-><init>()V

    aput-object v4, v2, v7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v2, v3, v7

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hkspki end"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hkspki err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->h(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public static g(Landroid/os/Handler$Callback;)V
    .locals 2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a()Lcom/aggmoread/sdk/z/c/a/a/e/k;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$i;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$i;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a(Landroid/os/Handler$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static h(Landroid/os/Handler$Callback;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
