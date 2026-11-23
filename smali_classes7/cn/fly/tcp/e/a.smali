.class public Lcn/fly/tcp/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/fly/tcp/a/c;

.field private final b:Lcn/fly/tools/network/NetworkHelper;

.field private final c:Lcn/fly/tools/utils/HashonHelper;

.field private final d:Lcn/fly/tcp/d/b;

.field private e:J

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/concurrent/atomic/AtomicLong;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcn/fly/tcp/a/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcn/fly/tcp/e/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    const/16 v0, 0x10e

    .line 14
    .line 15
    iput v0, p0, Lcn/fly/tcp/e/a;->i:I

    .line 16
    .line 17
    const/16 v0, 0x1f4

    .line 18
    .line 19
    iput v0, p0, Lcn/fly/tcp/e/a;->j:I

    .line 20
    .line 21
    iput-object p1, p0, Lcn/fly/tcp/e/a;->a:Lcn/fly/tcp/a/c;

    .line 22
    .line 23
    new-instance v0, Lcn/fly/tools/network/NetworkHelper;

    .line 24
    .line 25
    invoke-direct {v0}, Lcn/fly/tools/network/NetworkHelper;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcn/fly/tcp/e/a;->b:Lcn/fly/tools/network/NetworkHelper;

    .line 29
    .line 30
    new-instance v0, Lcn/fly/tools/utils/HashonHelper;

    .line 31
    .line 32
    invoke-direct {v0}, Lcn/fly/tools/utils/HashonHelper;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcn/fly/tcp/e/a;->c:Lcn/fly/tools/utils/HashonHelper;

    .line 36
    .line 37
    new-instance v0, Lcn/fly/tcp/d/b;

    .line 38
    .line 39
    invoke-direct {p0}, Lcn/fly/tcp/e/a;->q()Lcn/fly/tcp/d/b$a;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, p1, v1}, Lcn/fly/tcp/d/b;-><init>(Lcn/fly/tcp/a/c;Lcn/fly/tcp/d/b$a;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcn/fly/tcp/e/a;->d:Lcn/fly/tcp/d/b;

    .line 47
    .line 48
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcn/fly/tcp/e/a;->q:Landroid/content/Context;

    .line 53
    .line 54
    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 80
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 82
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 83
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 84
    :cond_0
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 85
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    return p2
.end method

.method static a(Ljava/util/HashMap;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)J"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 86
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 88
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 89
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 90
    :cond_0
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 91
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    :cond_1
    return-wide p2
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-array v0, v0, [J

    const/4 v2, 0x0

    aput-wide p1, v0, v2

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%16s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string v0, "0"

    .line 69
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    .line 70
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 92
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 94
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 95
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 96
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_2

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 48
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/util/HashMap;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "determineDomain"

    const-string v1, "uniqueKey"

    const-string v2, "uniqueId"

    const-string v3, "domains"

    const/4 v4, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 7
    invoke-direct {p0, p1, v3}, Lcn/fly/tcp/e/a;->b(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-wide/16 v5, 0x0

    .line 8
    invoke-static {p1, v2, v5, v6}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;J)J

    move-result-wide v7

    .line 9
    invoke-static {p1, v1}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {p1, v0}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v3, :cond_0

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    .line 14
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    if-eqz v3, :cond_7

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 17
    :cond_2
    iget v0, p0, Lcn/fly/tcp/e/a;->i:I

    const-string v2, "tick"

    .line 18
    invoke-static {p1, v2, v0}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    move v0, v2

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TP cfg invalid tick: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    :goto_0
    const-string v2, "globalSwitch"

    .line 20
    invoke-static {p1, v2, v4}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const-string v6, "connectSwitch"

    .line 21
    invoke-static {p1, v6, v4}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 22
    :goto_2
    iget v9, p0, Lcn/fly/tcp/e/a;->j:I

    const-string v10, "wr"

    .line 23
    invoke-static {p1, v10, v9}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_6

    move v9, p1

    goto :goto_3

    .line 24
    :cond_6
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TP cfg invalid wr: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 25
    :goto_3
    iput-boolean v4, p0, Lcn/fly/tcp/e/a;->m:Z

    .line 26
    iput-object v3, p0, Lcn/fly/tcp/e/a;->h:Ljava/util/ArrayList;

    .line 27
    iput-wide v7, p0, Lcn/fly/tcp/e/a;->e:J

    .line 28
    iput-object v1, p0, Lcn/fly/tcp/e/a;->f:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcn/fly/tcp/e/a;->i:I

    .line 30
    iput-boolean v2, p0, Lcn/fly/tcp/e/a;->k:Z

    .line 31
    iput-boolean v6, p0, Lcn/fly/tcp/e/a;->l:Z

    .line 32
    iput v9, p0, Lcn/fly/tcp/e/a;->j:I

    .line 33
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string v0, "tp cfg load: s"

    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return v5

    .line 34
    :cond_7
    :goto_4
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string v0, "TP cfg invalid required fields"

    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception p1

    .line 35
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    .line 36
    :cond_8
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string v0, "tp cfg load: f"

    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return v4
.end method

.method private c(Ljava/lang/String;)Ljava/net/InetSocketAddress;
    .locals 7

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ":"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v3

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "["

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "]"

    if-nez v4, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 10
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    .line 11
    :cond_5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    const v3, 0xffff

    if-le v0, v3, :cond_6

    goto :goto_0

    .line 12
    :cond_6
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :cond_7
    :goto_0
    return-object v1

    .line 13
    :catchall_0
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TP invalid port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-object v1
.end method

.method private o()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, ";"

    .line 2
    .line 3
    invoke-static {}, Lcn/fly/commons/ad;->b()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcn/fly/commons/o;->a()Lcn/fly/commons/o;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcn/fly/commons/o;->b()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "COMMON;"

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget v5, Lcn/fly/FlySDK;->SDK_VERSION_CODE:I

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x0

    .line 44
    :goto_0
    if-ge v5, v4, :cond_1

    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lcn/fly/commons/FlyProduct;

    .line 51
    .line 52
    const-string v7, "006Rgfijjejeijgi"

    .line 53
    .line 54
    invoke-static {v7}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-interface {v6}, Lcn/fly/commons/FlyProduct;->getProductTag()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_0

    .line 67
    .line 68
    const-string v7, ","

    .line 69
    .line 70
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-interface {v6}, Lcn/fly/commons/FlyProduct;->getProductTag()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-interface {v6}, Lcn/fly/commons/FlyProduct;->getSdkver()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-interface {v6}, Lcn/fly/commons/FlyProduct;->getProductTag()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    :catchall_0
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0
.end method

.method private p()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "006fll_gj;hQge"

    .line 7
    .line 8
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcn/fly/tcp/e/a;->o:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v1, "006flllLgjgl"

    .line 18
    .line 19
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcn/fly/tcp/e/a;->q:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v1, "004lifk"

    .line 33
    .line 34
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-string v1, "pushId"

    .line 47
    .line 48
    invoke-static {}, Lcn/fly/tcp/lifecycle/PSIDManager;->a()Lcn/fly/tcp/lifecycle/PSIDManager;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcn/fly/tcp/lifecycle/PSIDManager;->d()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcn/fly/commons/ad;->d()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v2, 0x2

    .line 64
    if-ne v1, v2, :cond_0

    .line 65
    .line 66
    const-string v1, "004_fefifkfe"

    .line 67
    .line 68
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, p0, Lcn/fly/tcp/e/a;->p:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-static {v0}, Lcn/fly/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    return-object v0
.end method

.method private q()Lcn/fly/tcp/d/b$a;
    .locals 1

    .line 1
    new-instance v0, Lcn/fly/tcp/e/a$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcn/fly/tcp/e/a$2;-><init>(Lcn/fly/tcp/e/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method declared-synchronized a(I)Lcn/fly/mcl/TcpStatus;
    .locals 7

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcn/fly/tcp/e/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-direct {p0}, Lcn/fly/tcp/e/a;->p()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x18

    .line 29
    invoke-static {p1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    const-string v0, "Common body no psid"

    invoke-virtual {p1, v0}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 30
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcn/fly/tcp/e/a;->m:Z

    iget-object v0, p0, Lcn/fly/tcp/e/a;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcn/fly/tcp/e/a;->a(ZLjava/lang/String;ILjava/lang/String;I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/16 p1, 0x15

    .line 31
    :try_start_2
    invoke-static {p1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    invoke-virtual {p0}, Lcn/fly/tcp/e/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(ZLjava/lang/String;ILjava/lang/String;I)Lcn/fly/mcl/TcpStatus;
    .locals 9

    monitor-enter p0

    const/16 v0, 0x18

    .line 32
    :try_start_0
    iget-object v1, p0, Lcn/fly/tcp/e/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_4

    const/4 v1, 0x3

    if-ge p3, v1, :cond_4

    .line 33
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TP rg domain : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    .line 34
    :try_start_1
    invoke-virtual {p0, p2, p4, p5}, Lcn/fly/tcp/e/a;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v3, "004k5geNlh"

    .line 35
    invoke-static {v3}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "004kOgeUlh"

    .line 36
    invoke-static {v3}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    const-string v4, "005k^fmgjWhg"

    .line 37
    invoke-static {v4}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "005k3fmgj9hg"

    .line 38
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-static {p2, v1, v3, v4}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p2, v5, v3

    if-eqz p2, :cond_0

    .line 39
    iget-object p2, p0, Lcn/fly/tcp/e/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 40
    invoke-static {}, Lcn/fly/tcp/lifecycle/a;->a()Lcn/fly/tcp/lifecycle/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/fly/tcp/lifecycle/a;->b()V

    .line 41
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    const-string v1, "TP register success"

    invoke-virtual {p2, v1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcn/fly/tcp/lifecycle/PSIDManager;->a()Lcn/fly/tcp/lifecycle/PSIDManager;

    move-result-object p2

    invoke-virtual {p2}, Lcn/fly/tcp/lifecycle/PSIDManager;->f()V

    const/16 p2, 0xa

    .line 43
    invoke-static {p2}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 44
    :cond_0
    :try_start_2
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    const-string v1, "TP register token invalid"

    invoke-virtual {p2, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v4, "006Qfefmfh;fMfk+g"

    .line 45
    invoke-static {v4}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "006Rfefmfh*fFfkLg"

    .line 46
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v7, p4

    move v8, p5

    .line 48
    invoke-virtual/range {v3 .. v8}, Lcn/fly/tcp/e/a;->a(ZLjava/lang/String;ILjava/lang/String;I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    if-ne v3, v1, :cond_3

    .line 49
    :try_start_3
    iput-boolean v2, p0, Lcn/fly/tcp/e/a;->n:Z

    .line 50
    invoke-virtual {p0}, Lcn/fly/tcp/e/a;->b()V

    .line 51
    invoke-static {}, Lcn/fly/tcp/lifecycle/PSIDManager;->a()Lcn/fly/tcp/lifecycle/PSIDManager;

    move-result-object p2

    invoke-virtual {p2}, Lcn/fly/tcp/lifecycle/PSIDManager;->f()V

    .line 52
    invoke-static {v0}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p2

    const-string v1, "Connection out of limit"

    invoke-virtual {p2, v1}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p2

    .line 53
    :try_start_4
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TP register exp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    add-int/lit8 v6, p3, 0x1

    .line 54
    iget-object p2, p0, Lcn/fly/tcp/e/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v6, p2, :cond_4

    if-nez p1, :cond_4

    const/4 v4, 0x0

    .line 55
    iget-object p1, p0, Lcn/fly/tcp/e/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v3, p0

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcn/fly/tcp/e/a;->a(ZLjava/lang/String;ILjava/lang/String;I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object p1

    .line 56
    :cond_4
    :try_start_5
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    move-result-object p1

    const-string p2, "tcp_config"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcn/fly/commons/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object p3, p0, Lcn/fly/tcp/e/a;->h:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p0}, Lcn/fly/tcp/e/a;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 59
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 60
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    .line 61
    :goto_1
    invoke-static {}, Lcn/fly/tcp/lifecycle/PSIDManager;->a()Lcn/fly/tcp/lifecycle/PSIDManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/fly/tcp/lifecycle/PSIDManager;->f()V

    .line 62
    invoke-static {v0}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exception: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Lcn/fly/tcp/d/b;
    .locals 1

    .line 4
    iget-object v0, p0, Lcn/fly/tcp/e/a;->d:Lcn/fly/tcp/d/b;

    return-object v0
.end method

.method a(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcn/fly/tcp/e/a;->a:Lcn/fly/tcp/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 15
    :try_start_0
    iget-object v0, p0, Lcn/fly/tcp/e/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/fly/tcp/e/a;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TP sd ty = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , bo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , out = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 17
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    new-instance p3, Lcn/fly/tcp/b/a;

    invoke-direct {p3, p1}, Lcn/fly/tcp/b/a;-><init>(I)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance v2, Lcn/fly/tcp/b/a;

    invoke-virtual {p0, v0, p3}, Lcn/fly/tcp/e/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p1, p3}, Lcn/fly/tcp/b/a;-><init>(ILjava/lang/String;)V

    move-object p3, v2

    .line 20
    :goto_0
    iget-object p1, p0, Lcn/fly/tcp/e/a;->d:Lcn/fly/tcp/d/b;

    invoke-virtual {p1, p3, v0, p2}, Lcn/fly/tcp/d/b;->a(Lcn/fly/tcp/b/a;Ljava/lang/String;I)Lcn/fly/tcp/b/c;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcn/fly/tcp/b/c;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcn/fly/tcp/b/c;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    :cond_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 22
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcn/fly/tcp/e/a;->a:Lcn/fly/tcp/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TP rg main = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , bo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , out = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcn/fly/tcp/e/a;->c(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TP invalid domain: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return-object v1

    .line 9
    :cond_0
    iget-object p1, p0, Lcn/fly/tcp/e/a;->a:Lcn/fly/tcp/a/c;

    const/16 v2, 0x1388

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3, v3, v2}, Lcn/fly/tcp/a/c;->a(Ljava/net/SocketAddress;ZZI)V

    .line 10
    new-instance p1, Lcn/fly/tcp/b/a;

    iget-object v0, p0, Lcn/fly/tcp/e/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcn/fly/tcp/e/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x3e9

    invoke-direct {p1, v0, p2}, Lcn/fly/tcp/b/a;-><init>(ILjava/lang/String;)V

    .line 11
    iget-wide v2, p0, Lcn/fly/tcp/e/a;->e:J

    iput-wide v2, p1, Lcn/fly/tcp/b/a;->c:J

    .line 12
    iget-object p2, p0, Lcn/fly/tcp/e/a;->d:Lcn/fly/tcp/d/b;

    iget-object v0, p0, Lcn/fly/tcp/e/a;->f:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, p3}, Lcn/fly/tcp/d/b;->a(Lcn/fly/tcp/b/a;Ljava/lang/String;I)Lcn/fly/tcp/b/c;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcn/fly/tcp/b/c;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcn/fly/tcp/b/c;->c()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/HashMap;

    :cond_1
    return-object v1
.end method

.method a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "004e$fmfeEh"

    .line 72
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    const-string v1, "004*feAfkf"

    .line 73
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "004NfeJfkf"

    .line 74
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 75
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 76
    check-cast p1, Ljava/util/Map;

    .line 77
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcn/fly/tcp/e/a;->m:Z

    .line 64
    invoke-direct {p0}, Lcn/fly/tcp/e/a;->p()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p1

    const-string v0, "TP redir common body no psid"

    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x1388

    move-object v1, p0

    move-object v3, p1

    .line 67
    invoke-virtual/range {v1 .. v6}, Lcn/fly/tcp/e/a;->a(ZLjava/lang/String;ILjava/lang/String;I)Lcn/fly/mcl/TcpStatus;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/e/a;->o:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iput-object p2, p0, Lcn/fly/tcp/e/a;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method a(II)Z
    .locals 2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_3

    const/16 v0, 0x3ea

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v0, p1, v1}, Lcn/fly/tcp/e/a;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xbb8

    add-int/2addr p2, v0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcn/fly/tcp/e/a;->a(II)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/16 p1, 0x3e8

    add-int/2addr p2, v0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/fly/tcp/e/a;->a(II)Z

    move-result p1

    return p1

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    .line 37
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Lcn/fly/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcn/fly/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 43
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcn/fly/tcp/e/a;->l()V

    .line 2
    iget-object v0, p0, Lcn/fly/tcp/e/a;->a:Lcn/fly/tcp/a/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/fly/tcp/a/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method c()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/fly/tcp/e/a;->i:I

    return v0
.end method

.method c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    invoke-static {p1, p2}, Lcn/fly/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 15
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method d()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/fly/tcp/e/a;->j:I

    .line 2
    .line 3
    return v0
.end method

.method e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/fly/tcp/e/a;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/fly/tcp/e/a;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "unavailable(global: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcn/fly/tcp/e/a;->k:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", connect: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcn/fly/tcp/e/a;->l:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", forceClose:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcn/fly/tcp/e/a;->n:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ")"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "global: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcn/fly/tcp/e/a;->k:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method i()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/a;->a:Lcn/fly/tcp/a/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcn/fly/tcp/a/c;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Lcn/fly/tcp/e/a;->j()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    :cond_1
    :goto_0
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v5, "Tp sta: "

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, " [seSta: "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", hasTk: "

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "]"

    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v3, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return v1
.end method

.method j()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/fly/tcp/e/a;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcn/fly/tcp/e/a;->l:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcn/fly/tcp/e/a;->n:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcn/fly/tcp/e/a;->h:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcn/fly/tcp/e/a;->f:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcn/fly/tcp/e/a;->a(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method n()V
    .locals 13

    .line 1
    const-string v0, "TP cf url : "

    .line 2
    .line 3
    const-string v1, "use_config"

    .line 4
    .line 5
    const-string v2, "tcp_config"

    .line 6
    .line 7
    const-string v3, "requestTimes"

    .line 8
    .line 9
    iget-object v4, p0, Lcn/fly/tcp/e/a;->p:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_8

    .line 16
    .line 17
    iget-object v4, p0, Lcn/fly/tcp/e/a;->q:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    const/4 v4, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    :try_start_0
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v6, v2, v5}, Lcn/fly/commons/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_3

    .line 38
    .line 39
    invoke-static {v6}, Lcn/fly/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_3

    .line 48
    .line 49
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    if-eqz v8, :cond_1

    .line 54
    .line 55
    instance-of v9, v8, Ljava/lang/Long;

    .line 56
    .line 57
    if-eqz v9, :cond_1

    .line 58
    .line 59
    check-cast v8, Ljava/lang/Long;

    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    if-eqz v8, :cond_2

    .line 67
    .line 68
    instance-of v9, v8, Ljava/lang/Integer;

    .line 69
    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    check-cast v8, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    int-to-long v8, v8

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const-wide/16 v8, 0x0

    .line 81
    .line 82
    :goto_0
    const-wide/32 v10, 0x5265c00

    .line 83
    .line 84
    .line 85
    add-long/2addr v8, v10

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v10

    .line 90
    cmp-long v12, v8, v10

    .line 91
    .line 92
    if-lez v12, :cond_3

    .line 93
    .line 94
    invoke-direct {p0, v7}, Lcn/fly/tcp/e/a;->b(Ljava/util/HashMap;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_3

    .line 99
    .line 100
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v7, v1, v4}, Lcn/fly/commons/ae;->b(Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_3

    .line 109
    .line 110
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v9, "TP cfg src: cc"

    .line 120
    .line 121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v7, v6}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :catchall_0
    move-exception v6

    .line 136
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v7, v6}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    :try_start_1
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    const-string v7, "TP cfg no cc"

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v6, "sti"

    .line 157
    .line 158
    invoke-static {v6, v5}, Lcn/fly/commons/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Ljava/util/HashMap;

    .line 163
    .line 164
    new-instance v7, Ljava/util/HashMap;

    .line 165
    .line 166
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 167
    .line 168
    .line 169
    if-eqz v6, :cond_4

    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-nez v8, :cond_4

    .line 176
    .line 177
    invoke-static {}, Lcn/fly/tcp/lifecycle/PSIDManager;->a()Lcn/fly/tcp/lifecycle/PSIDManager;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {v8}, Lcn/fly/tcp/lifecycle/PSIDManager;->e()Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-nez v8, :cond_4

    .line 186
    .line 187
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v5, "TP cfg src: g*f"

    .line 192
    .line 193
    invoke-virtual {v0, v5}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v0, "004e5fmfe$h"

    .line 197
    .line 198
    invoke-static {v0}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const/16 v5, 0xc8

    .line 203
    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    const-string v0, "004Zfe-fkf"

    .line 212
    .line 213
    invoke-static {v0}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :cond_4
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 223
    .line 224
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    invoke-static {v8}, Lcn/fly/tools/utils/DH;->requester(Landroid/content/Context;)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {v8, v4}, Lcn/fly/tools/utils/DH$RequestBuilder;->checkNetworkAvailableForce(Z)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    new-instance v9, Lcn/fly/tcp/e/a$1;

    .line 240
    .line 241
    invoke-direct {v9, p0, v6}, Lcn/fly/tcp/e/a$1;-><init>(Lcn/fly/tcp/e/a;Ljava/util/concurrent/BlockingQueue;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8, v9}, Lcn/fly/tools/utils/DH$RequestBuilder;->request(Lcn/fly/tools/utils/DH$DHResponder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 245
    .line 246
    .line 247
    :try_start_2
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 248
    .line 249
    const-wide/16 v9, 0x3e8

    .line 250
    .line 251
    invoke-interface {v6, v9, v10, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    check-cast v6, Ljava/lang/Boolean;

    .line 256
    .line 257
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 258
    .line 259
    .line 260
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    goto :goto_1

    .line 262
    :catchall_1
    move-exception v6

    .line 263
    :try_start_3
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-virtual {v8, v6}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    const/4 v6, 0x0

    .line 271
    :goto_1
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    new-instance v9, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v10, "TP cfg net: "

    .line 281
    .line 282
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    invoke-virtual {v8, v9}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    if-eqz v6, :cond_6

    .line 296
    .line 297
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    const-string v7, "TP cfg src: init"

    .line 302
    .line 303
    invoke-virtual {v6, v7}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    new-instance v6, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;

    .line 307
    .line 308
    invoke-direct {v6}, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 309
    .line 310
    .line 311
    const/16 v7, 0x2710

    .line 312
    .line 313
    iput v7, v6, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 314
    .line 315
    const/16 v7, 0x1388

    .line 316
    .line 317
    iput v7, v6, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 318
    .line 319
    const-string v7, "/tcp/config/init"

    .line 320
    .line 321
    new-instance v8, Ljava/util/HashMap;

    .line 322
    .line 323
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 324
    .line 325
    .line 326
    const-string v9, "006fll%gjMhIge"

    .line 327
    .line 328
    invoke-static {v9}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    iget-object v10, p0, Lcn/fly/tcp/e/a;->o:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    const-string v9, "pushId"

    .line 338
    .line 339
    invoke-static {}, Lcn/fly/tcp/lifecycle/PSIDManager;->a()Lcn/fly/tcp/lifecycle/PSIDManager;

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    invoke-virtual {v10}, Lcn/fly/tcp/lifecycle/PSIDManager;->d()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    const-string v9, "products"

    .line 351
    .line 352
    invoke-direct {p0}, Lcn/fly/tcp/e/a;->o()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    invoke-static {}, Lcn/fly/commons/ad;->d()I

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    const/4 v10, 0x2

    .line 364
    if-ne v9, v10, :cond_5

    .line 365
    .line 366
    const-string v7, "0041fefifkfe"

    .line 367
    .line 368
    invoke-static {v7}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    iget-object v9, p0, Lcn/fly/tcp/e/a;->p:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    const-string v7, "006flll:gjgl"

    .line 378
    .line 379
    invoke-static {v7}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    const-string v7, "/tcp/config/v2/init"

    .line 391
    .line 392
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-static {}, Lcn/fly/commons/j;->a()Lcn/fly/commons/j;

    .line 398
    .line 399
    .line 400
    move-result-object v10

    .line 401
    const-string v11, "tcig"

    .line 402
    .line 403
    invoke-virtual {v10, v11}, Lcn/fly/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v10

    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    new-instance v10, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v11, " -> bd : "

    .line 433
    .line 434
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v10

    .line 444
    invoke-virtual {v9, v10}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object v9, p0, Lcn/fly/tcp/e/a;->b:Lcn/fly/tools/network/NetworkHelper;

    .line 448
    .line 449
    invoke-virtual {v9, v7, v8, v5, v6}, Lcn/fly/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    new-instance v8, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v0, " -> rp : "

    .line 469
    .line 470
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v6, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-static {v5}, Lcn/fly/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    :cond_6
    :goto_2
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-nez v0, :cond_7

    .line 492
    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 494
    .line 495
    .line 496
    move-result-wide v5

    .line 497
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    invoke-direct {p0, v7}, Lcn/fly/tcp/e/a;->b(Ljava/util/HashMap;)Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-eqz v0, :cond_7

    .line 509
    .line 510
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {v0, v1, v4}, Lcn/fly/commons/ae;->a(Ljava/lang/String;Z)V

    .line 515
    .line 516
    .line 517
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-static {v7}, Lcn/fly/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    invoke-virtual {v0, v2, v1}, Lcn/fly/commons/ae;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 526
    .line 527
    .line 528
    goto :goto_3

    .line 529
    :catchall_2
    move-exception v0

    .line 530
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-virtual {v1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    :cond_7
    :goto_3
    return-void

    .line 542
    :cond_8
    :goto_4
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    const-string v1, "TPH has not been initialized"

    .line 547
    .line 548
    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    return-void
.end method
