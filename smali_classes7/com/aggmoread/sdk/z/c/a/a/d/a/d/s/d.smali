.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/n;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/n;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->f:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/g;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/m;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/l;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/l;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/i;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->i:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/h;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/a;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/f;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->j:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/j;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            ")",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b<",
            "*>;"
        }
    .end annotation

    .line 1
    const-string v0, "2"

    iget-object v1, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->b0:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/j;->a()I

    move-result v2

    if-ne v2, v1, :cond_1

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$a;->a:[I

    iget-object v2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->j:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_1
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->i:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    goto :goto_0

    :pswitch_3
    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->Z:Ljava/lang/Object;

    invoke-virtual {p2, v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "xxx"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", v2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->f:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    goto :goto_0

    :pswitch_7
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/c/a/a/c/j;->a()I

    move-result p2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/c/j;->i:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/j;->a()I

    move-result v0

    if-ne p2, v0, :cond_2

    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/j;->a()I

    move-result p1

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/c/j;->k:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/c/a/a/c/j;->a()I

    move-result p2

    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a:Ljava/util/Map;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;->j:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d$b;

    goto/16 :goto_0

    :goto_1
    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 p1, 0x0

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;
    .locals 2

    .line 2
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;-><init>()V

    sput-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;

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
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ADCBH"

    const-string p2, "\u4e0d\u652f\u6301\u7684\u7c7b\u578b!"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
