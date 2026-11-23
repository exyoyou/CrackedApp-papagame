.class public Lcn/fly/tools/utils/FlyPersistence$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/utils/FlyPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:J

.field private d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$i;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-wide p3, p0, Lcn/fly/tools/utils/FlyPersistence$i;->c:J

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$i;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$i;[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$i;->a([B)V

    return-void
.end method

.method private a([B)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$i;->d:[B

    return-void
.end method

.method static synthetic b(Lcn/fly/tools/utils/FlyPersistence$i;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$i;->d:[B

    return-object p0
.end method

.method static synthetic c(Lcn/fly/tools/utils/FlyPersistence$i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$i;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcn/fly/tools/utils/FlyPersistence$i;)[B
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$i;->f()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcn/fly/tools/utils/FlyPersistence$i;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$i;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$i;->d:[B

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$i;->c:J

    return-wide v0
.end method

.method public e()Z
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcn/fly/tools/utils/FlyPersistence$i;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/fly/tools/utils/FlyPersistence$i;->d()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method
