.class Lcom/join/mgps/control/RhythmLayout$b;
.super Ljava/util/Timer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/control/RhythmLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/TimerTask;

.field private b:Z

.field private c:F

.field private d:F

.field final synthetic e:Lcom/join/mgps/control/RhythmLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/control/RhythmLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->b:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/control/RhythmLayout$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/control/RhythmLayout$b;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/control/RhythmLayout$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/control/RhythmLayout$b;->c:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method c(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->c:F

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/control/RhythmLayout$b;->d:F

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    cmpg-float v1, p1, v0

    .line 7
    .line 8
    if-ltz v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/join/mgps/control/RhythmLayout;->a(Lcom/join/mgps/control/RhythmLayout;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    cmpl-float v1, p1, v1

    .line 18
    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/join/mgps/control/RhythmLayout;->b(Lcom/join/mgps/control/RhythmLayout;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout;->a(Lcom/join/mgps/control/RhythmLayout;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    sub-int/2addr v1, v2

    .line 34
    int-to-float v1, v1

    .line 35
    cmpg-float p1, p1, v1

    .line 36
    .line 37
    if-ltz p1, :cond_2

    .line 38
    .line 39
    :cond_0
    cmpg-float p1, p2, v0

    .line 40
    .line 41
    if-gez p1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->b:Z

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    invoke-static {p1, v0, v1}, Lcom/join/mgps/control/RhythmLayout;->d(Lcom/join/mgps/control/RhythmLayout;J)J

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/join/mgps/control/RhythmLayout$b;->b:Z

    .line 59
    .line 60
    :goto_1
    return-void
.end method

.method d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b;->a:Ljava/util/TimerTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/control/RhythmLayout$b$a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/control/RhythmLayout$b$a;-><init>(Lcom/join/mgps/control/RhythmLayout$b;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b;->a:Ljava/util/TimerTask;

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b;->a:Ljava/util/TimerTask;

    .line 13
    .line 14
    const-wide/16 v3, 0x12c

    .line 15
    .line 16
    const-wide/16 v5, 0xfa

    .line 17
    .line 18
    move-object v1, p0

    .line 19
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
