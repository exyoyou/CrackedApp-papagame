.class public Lcom/nineoldandroids/animation/o;
.super Lcom/nineoldandroids/animation/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/o$a;
    }
.end annotation


# instance fields
.field private O:Lcom/nineoldandroids/animation/o$a;

.field private P:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/animation/q;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/nineoldandroids/animation/o;->P:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method E(F)V
    .locals 0

    .line 1
    return-void
.end method

.method F(J)Z
    .locals 11

    .line 1
    iget v0, p0, Lcom/nineoldandroids/animation/q;->j:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/nineoldandroids/animation/q;->j:I

    .line 9
    .line 10
    iget-wide v3, p0, Lcom/nineoldandroids/animation/q;->d:J

    .line 11
    .line 12
    cmp-long v0, v3, v1

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    iput-wide p1, p0, Lcom/nineoldandroids/animation/q;->c:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sub-long v3, p1, v3

    .line 20
    .line 21
    iput-wide v3, p0, Lcom/nineoldandroids/animation/q;->c:J

    .line 22
    .line 23
    const-wide/16 v3, -0x1

    .line 24
    .line 25
    iput-wide v3, p0, Lcom/nineoldandroids/animation/q;->d:J

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/nineoldandroids/animation/o;->O:Lcom/nineoldandroids/animation/o$a;

    .line 28
    .line 29
    if-eqz v5, :cond_3

    .line 30
    .line 31
    iget-wide v3, p0, Lcom/nineoldandroids/animation/q;->c:J

    .line 32
    .line 33
    sub-long v7, p1, v3

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/nineoldandroids/animation/o;->P:J

    .line 36
    .line 37
    cmp-long v0, v3, v1

    .line 38
    .line 39
    if-gez v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    sub-long v1, p1, v3

    .line 43
    .line 44
    :goto_1
    move-wide v9, v1

    .line 45
    iput-wide p1, p0, Lcom/nineoldandroids/animation/o;->P:J

    .line 46
    .line 47
    move-object v6, p0

    .line 48
    invoke-interface/range {v5 .. v10}, Lcom/nineoldandroids/animation/o$a;->a(Lcom/nineoldandroids/animation/o;JJ)V

    .line 49
    .line 50
    .line 51
    :cond_3
    const/4 p1, 0x0

    .line 52
    return p1
.end method

.method U()V
    .locals 0

    .line 1
    return-void
.end method

.method public o0(Lcom/nineoldandroids/animation/o$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/o;->O:Lcom/nineoldandroids/animation/o$a;

    .line 2
    .line 3
    return-void
.end method
