.class public Lcom/googlecode/mp4parser/authoring/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/Date;

.field private e:Ljava/util/Date;

.field private f:Lcom/googlecode/mp4parser/util/l;

.field private g:D

.field private h:D

.field private i:F

.field private j:J

.field private k:I

.field l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "eng"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->b:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->d:Ljava/util/Date;

    .line 14
    .line 15
    new-instance v0, Ljava/util/Date;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->e:Ljava/util/Date;

    .line 21
    .line 22
    sget-object v0, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->f:Lcom/googlecode/mp4parser/util/l;

    .line 25
    .line 26
    const-wide/16 v0, 0x1

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/i;->j:J

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/i;->k:I

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->e:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/i;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    return-object v0
.end method

.method public d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/i;->h:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/i;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public g()Lcom/googlecode/mp4parser/util/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->f:Lcom/googlecode/mp4parser/util/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->d:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/i;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/i;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/i;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public l()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/i;->g:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public m(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/i;->e:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/i;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public o(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/i;->h:D

    .line 2
    .line 3
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/i;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/i;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public r(Lcom/googlecode/mp4parser/util/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/i;->f:Lcom/googlecode/mp4parser/util/l;

    .line 2
    .line 3
    return-void
.end method

.method public s(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/i;->d:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public t(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/i;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public u(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/i;->j:J

    .line 2
    .line 3
    return-void
.end method

.method public v(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/i;->i:F

    .line 2
    .line 3
    return-void
.end method

.method public w(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/i;->g:D

    .line 2
    .line 3
    return-void
.end method
