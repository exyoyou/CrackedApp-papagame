.class public Lcom/aggmoread/sdk/z/a/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/aggmoread/sdk/z/a/i/a;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "arrow_up_1.gif"

    const-string v2, "arrow_up_2.gif"

    const-string v3, "arrow_up_3.gif"

    const-string v4, "arrow_up_4.gif"

    const-string v5, "arrow_up_5.gif"

    const-string v6, "arrow_up_6.gif"

    const-string v7, "arrow_up_7.gif"

    const-string v8, "circle.gif"

    const-string v9, "compound.gif"

    const-string v10, "hand.gif"

    const-string v11, "hand_up.gif"

    const-string v12, "hand_mup.gif"

    const-string v13, "hb_rain.gif"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/aggmoread/sdk/z/a/i/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/a;->a:Lcom/aggmoread/sdk/z/a/i/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/aggmoread/sdk/z/a/i/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aggmoread/sdk/z/a/i/a;->a:Lcom/aggmoread/sdk/z/a/i/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/a/i/a;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/a/i/a;-><init>()V

    sput-object v1, Lcom/aggmoread/sdk/z/a/i/a;->a:Lcom/aggmoread/sdk/z/a/i/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/a;->a:Lcom/aggmoread/sdk/z/a/i/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    const-string v2, "rs_1_material"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/a/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
