.class Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:B

.field private c:[B

.field private d:J

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a:I

    .line 5
    .line 6
    const-wide/16 v0, 0x29

    .line 7
    .line 8
    int-to-long v2, p1

    .line 9
    mul-long v2, v2, v0

    .line 10
    .line 11
    const-wide/16 v0, 0x400

    .line 12
    .line 13
    add-long/2addr v2, v0

    .line 14
    iput-wide v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->g:J

    .line 15
    .line 16
    return-void
.end method

.method private a(B)V
    .locals 0

    .line 5
    iput-byte p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b:B

    return-void
.end method

.method private a(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d:J

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a(B)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a([B)V

    return-void
.end method

.method private a([B)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c:[B

    return-void
.end method

.method static synthetic b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a:I

    return p0
.end method

.method private b(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->e:J

    return-void
.end method

.method static synthetic b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b(J)V

    return-void
.end method

.method static synthetic c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->g:J

    return-wide v0
.end method

.method private c(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f:J

    return-void
.end method

.method static synthetic c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(J)V

    return-void
.end method

.method static synthetic d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d:J

    return-wide p1
.end method

.method static synthetic e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d:J

    return-wide v0
.end method

.method static synthetic f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c:[B

    return-object p0
.end method

.method static synthetic g(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b:B

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)I
    .locals 4

    .line 12
    invoke-virtual {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public a()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->g:J

    return-wide v0
.end method

.method public a(B[BJJ)V
    .locals 0

    .line 8
    iput-byte p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b:B

    .line 9
    iput-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c:[B

    .line 10
    iput-wide p3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->e:J

    .line 11
    iput-wide p5, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f:J

    return-void
.end method

.method public b()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->e:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f:J

    return-wide v0
.end method

.method public e()Z
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput-byte v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b:B

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c:[B

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f:J

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d:J

    .line 6
    iput-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->e:J

    return-void
.end method
