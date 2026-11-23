.class public Lcom/join/mgps/customview/CountDownerTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CountDownerTextView$a;
    }
.end annotation


# static fields
.field private static final c:I = 0x3e8

.field private static final d:I = 0x1

.field private static final e:I = 0x64


# instance fields
.field private b:Lcom/join/mgps/customview/CountDownerTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/CountDownerTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/CountDownerTextView;->b()V

    return-void
.end method

.method private a(JI)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startTime",
            "playSeconds"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    const-wide/16 p1, 0x3e8

    .line 7
    .line 8
    div-long/2addr v0, p1

    .line 9
    int-to-long p1, p3

    .line 10
    add-long/2addr v0, p1

    .line 11
    const-wide/16 p1, 0x1

    .line 12
    .line 13
    sub-long/2addr v0, p1

    .line 14
    long-to-int p1, v0

    .line 15
    return p1
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/CountDownerTextView$a;-><init>(Lcom/join/mgps/customview/CountDownerTextView;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/CountDownerTextView;->b:Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 7
    .line 8
    return-void
.end method

.method public c(IIJILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "delayTime",
            "timeInterval",
            "startTime",
            "playSeconds",
            "part1",
            "part2"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lcom/join/mgps/customview/CountDownerTextView;->a(JI)I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/e0;->f(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object p3, p0, Lcom/join/mgps/customview/CountDownerTextView;->b:Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 31
    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    new-instance p3, Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 35
    .line 36
    invoke-direct {p3, p0}, Lcom/join/mgps/customview/CountDownerTextView$a;-><init>(Lcom/join/mgps/customview/CountDownerTextView;)V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Lcom/join/mgps/customview/CountDownerTextView;->b:Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CountDownerTextView;->b:Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 42
    .line 43
    int-to-long v3, p1

    .line 44
    move v2, p2

    .line 45
    move-object v5, p6

    .line 46
    move-object v6, p7

    .line 47
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/CountDownerTextView$a;->a(IIJLjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/customview/CountDownerTextView;->b:Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 51
    .line 52
    const/16 p2, 0x64

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/customview/CountDownerTextView;->b:Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public d(JILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startTime",
            "playSeconds",
            "part1",
            "part2"
        }
    .end annotation

    .line 1
    const/16 v1, 0x3e8

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    move-object v0, p0

    .line 5
    move-wide v3, p1

    .line 6
    move v5, p3

    .line 7
    move-object v6, p4

    .line 8
    move-object v7, p5

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/customview/CountDownerTextView;->c(IIJILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CountDownerTextView;->b:Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/customview/CountDownerTextView;->b:Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 12
    .line 13
    :cond_0
    return-void
.end method
