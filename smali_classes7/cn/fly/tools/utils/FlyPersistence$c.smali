.class final Lcn/fly/tools/utils/FlyPersistence$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/utils/FlyPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/Object;

.field private c:J


# direct methods
.method private constructor <init>(JLjava/lang/Object;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$c;->a:J

    .line 4
    iput-object p3, p0, Lcn/fly/tools/utils/FlyPersistence$c;->b:Ljava/lang/Object;

    .line 5
    iput-wide p4, p0, Lcn/fly/tools/utils/FlyPersistence$c;->c:J

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/Object;JLcn/fly/tools/utils/FlyPersistence$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/fly/tools/utils/FlyPersistence$c;-><init>(JLjava/lang/Object;J)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$c;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private a()Z
    .locals 6

    .line 2
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$c;->a:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method static synthetic b(Lcn/fly/tools/utils/FlyPersistence$c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$c;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lcn/fly/tools/utils/FlyPersistence$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$c;->c:J

    .line 2
    .line 3
    return-wide v0
.end method
