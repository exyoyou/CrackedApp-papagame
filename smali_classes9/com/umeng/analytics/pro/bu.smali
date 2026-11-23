.class public Lcom/umeng/analytics/pro/bu;
.super Lcom/umeng/analytics/pro/cb;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field private static final j:Lcom/umeng/analytics/pro/cz;

.field private static final k:Lcom/umeng/analytics/pro/cp;

.field private static final l:Lcom/umeng/analytics/pro/cp;

.field private static final m:J = 0x1L


# instance fields
.field protected i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/cz;

    .line 2
    .line 3
    const-string v1, "TApplicationException"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/cz;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/umeng/analytics/pro/bu;->j:Lcom/umeng/analytics/pro/cz;

    .line 9
    .line 10
    new-instance v0, Lcom/umeng/analytics/pro/cp;

    .line 11
    .line 12
    const/16 v1, 0xb

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const-string v3, "message"

    .line 16
    .line 17
    invoke-direct {v0, v3, v1, v2}, Lcom/umeng/analytics/pro/cp;-><init>(Ljava/lang/String;BS)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/umeng/analytics/pro/bu;->k:Lcom/umeng/analytics/pro/cp;

    .line 21
    .line 22
    new-instance v0, Lcom/umeng/analytics/pro/cp;

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    const-string v3, "type"

    .line 28
    .line 29
    invoke-direct {v0, v3, v1, v2}, Lcom/umeng/analytics/pro/cp;-><init>(Ljava/lang/String;BS)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/umeng/analytics/pro/bu;->l:Lcom/umeng/analytics/pro/cp;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cb;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/umeng/analytics/pro/bu;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cb;-><init>()V

    .line 4
    iput p1, p0, Lcom/umeng/analytics/pro/bu;->i:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/cb;-><init>(Ljava/lang/String;)V

    .line 6
    iput p1, p0, Lcom/umeng/analytics/pro/bu;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/cb;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/umeng/analytics/pro/bu;->i:I

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/cu;)Lcom/umeng/analytics/pro/bu;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/cb;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cu;->j()Lcom/umeng/analytics/pro/cz;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cu;->l()Lcom/umeng/analytics/pro/cp;

    move-result-object v2

    .line 4
    iget-byte v3, v2, Lcom/umeng/analytics/pro/cp;->b:B

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cu;->k()V

    .line 6
    new-instance p0, Lcom/umeng/analytics/pro/bu;

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/bu;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 7
    :cond_0
    iget-short v2, v2, Lcom/umeng/analytics/pro/cp;->c:S

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 8
    invoke-static {p0, v3}, Lcom/umeng/analytics/pro/cx;->a(Lcom/umeng/analytics/pro/cu;B)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    if-ne v3, v2, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cu;->w()I

    move-result v1

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p0, v3}, Lcom/umeng/analytics/pro/cx;->a(Lcom/umeng/analytics/pro/cu;B)V

    goto :goto_1

    :cond_3
    const/16 v2, 0xb

    if-ne v3, v2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cu;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {p0, v3}, Lcom/umeng/analytics/pro/cx;->a(Lcom/umeng/analytics/pro/cu;B)V

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cu;->m()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/bu;->i:I

    return v0
.end method

.method public b(Lcom/umeng/analytics/pro/cu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/cb;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bu;->j:Lcom/umeng/analytics/pro/cz;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/cu;->a(Lcom/umeng/analytics/pro/cz;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/umeng/analytics/pro/bu;->k:Lcom/umeng/analytics/pro/cp;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/cu;->a(Lcom/umeng/analytics/pro/cp;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/cu;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cu;->c()V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/bu;->l:Lcom/umeng/analytics/pro/cp;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/cu;->a(Lcom/umeng/analytics/pro/cp;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/umeng/analytics/pro/bu;->i:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/cu;->a(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cu;->c()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cu;->d()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cu;->b()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
