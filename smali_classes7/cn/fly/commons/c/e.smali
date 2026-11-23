.class public Lcn/fly/commons/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/commons/c/e$a;
    }
.end annotation


# static fields
.field private static a:Lcn/fly/commons/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/fly/commons/c/e$a;
    .locals 5

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    invoke-static {}, Lcn/fly/commons/c/e$a;->values()[Lcn/fly/commons/c/e$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 25
    invoke-static {v3}, Lcn/fly/commons/c/e$a;->a(Lcn/fly/commons/c/e$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcn/fly/commons/c/e$a;->a(Lcn/fly/commons/c/e$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 26
    invoke-static {v3}, Lcn/fly/commons/c/e$a;->b(Lcn/fly/commons/c/e$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 27
    invoke-static {v3}, Lcn/fly/commons/c/e$a;->b(Lcn/fly/commons/c/e$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/fly/tools/utils/DH$SyncMtd;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    .line 28
    :cond_2
    invoke-static {}, Lcn/fly/commons/c/e;->a()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcn/fly/commons/c/e;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 29
    :cond_3
    invoke-static {}, Lcn/fly/commons/c;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    invoke-static {p0}, Lcn/fly/commons/c/e;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 31
    sget-object p0, Lcn/fly/commons/c/e$a;->x:Lcn/fly/commons/c/e$a;

    return-object p0

    .line 32
    :cond_4
    invoke-static {}, Lcn/fly/commons/c/e;->c()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 33
    sget-object p0, Lcn/fly/commons/c/e$a;->y:Lcn/fly/commons/c/e$a;

    return-object p0

    .line 34
    :cond_5
    sget-object p0, Lcn/fly/commons/c/e$a;->a:Lcn/fly/commons/c/e$a;

    return-object p0

    .line 35
    :cond_6
    :goto_2
    sget-object p0, Lcn/fly/commons/c/e$a;->o:Lcn/fly/commons/c/e$a;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcn/fly/commons/c/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcn/fly/commons/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/fly/commons/c/e$a;

    move-result-object v1

    .line 4
    sget-object v2, Lcn/fly/commons/c/e$a;->a:Lcn/fly/commons/c/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :try_start_2
    sget-object v2, Lcn/fly/commons/c/e$2;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 7
    :pswitch_0
    new-instance v1, Lcn/fly/commons/c/c;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto/16 :goto_0

    .line 8
    :pswitch_1
    new-instance v1, Lcn/fly/commons/c/n;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto/16 :goto_0

    .line 9
    :pswitch_2
    new-instance v1, Lcn/fly/commons/c/b;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 10
    :pswitch_3
    new-instance v1, Lcn/fly/commons/c/r;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/r;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 11
    :pswitch_4
    new-instance v1, Lcn/fly/commons/c/k;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 12
    :pswitch_5
    new-instance v1, Lcn/fly/commons/c/i;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 13
    :pswitch_6
    new-instance v1, Lcn/fly/commons/c/o;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/o;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 14
    :pswitch_7
    new-instance v1, Lcn/fly/commons/c/a;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 15
    :pswitch_8
    new-instance v1, Lcn/fly/commons/c/j;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 16
    :pswitch_9
    new-instance v1, Lcn/fly/commons/c/l;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/l;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 17
    :pswitch_a
    new-instance v1, Lcn/fly/commons/c/m;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 18
    :pswitch_b
    new-instance v1, Lcn/fly/commons/c/f;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 19
    :pswitch_c
    new-instance v1, Lcn/fly/commons/c/g;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 20
    :pswitch_d
    new-instance v1, Lcn/fly/commons/c/p;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/p;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 21
    :pswitch_e
    new-instance v1, Lcn/fly/commons/c/q;

    invoke-direct {v1, p0}, Lcn/fly/commons/c/q;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a()Z
    .locals 2

    const-string v0, "021!ekelemggehejKh3edemfgek>ggIeg]g0emBhe6gg*gh"

    .line 36
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/fly/tools/utils/DH$SyncMtd;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "008$hdhkhjhjidhjhifm"

    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcn/fly/commons/c/e;->a(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    if-eqz v0, :cond_4

    .line 3
    instance-of v1, v0, Lcn/fly/commons/c/f;

    const-string v2, "^[0fF\\-]+"

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcn/fly/commons/c/h;->d()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcn/fly/commons/c/g;

    invoke-direct {v0, p0}, Lcn/fly/commons/c/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, v0, Lcn/fly/commons/c/l;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0}, Lcn/fly/commons/c/h;->d()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Lcn/fly/commons/c/m;

    invoke-direct {v0, p0}, Lcn/fly/commons/c/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    .line 11
    :cond_3
    :goto_0
    sget-object p0, Lcn/fly/commons/c/e;->a:Lcn/fly/commons/c/h;

    invoke-virtual {p0}, Lcn/fly/commons/c/h;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b()Z
    .locals 2

    const-string v0, "015Eekelemgjgjehejem@kLekeledehXdj"

    .line 12
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/fly/tools/utils/DH$SyncMtd;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "007Meh1fOfiWf:elgh^f"

    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c()Z
    .locals 2

    const-string v0, "ro.odm.manufacturer"

    .line 7
    invoke-static {v0}, Lcn/fly/tools/utils/DH$SyncMtd;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRIZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    .line 1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    invoke-static {p0}, Lcn/fly/tools/utils/DH;->requester(Landroid/content/Context;)Lcn/fly/tools/utils/DH$RequestBuilder;

    move-result-object p0

    const-string v4, "027d,elegemQd:elel)hke7edemed:gPeeej9dgDejedgjehXkk9elekHj"

    .line 3
    invoke-static {v4}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->getMpfo(Ljava/lang/String;I)Lcn/fly/tools/utils/DH$RequestBuilder;

    move-result-object p0

    new-instance v4, Lcn/fly/commons/c/e$1;

    invoke-direct {v4, v2, v3}, Lcn/fly/commons/c/e$1;-><init>([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    .line 4
    invoke-virtual {p0, v4}, Lcn/fly/tools/utils/DH$RequestBuilder;->request(Lcn/fly/tools/utils/DH$DHResponder;)V

    .line 5
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v3, v4, v5, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    aget-object p0, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v1
.end method
