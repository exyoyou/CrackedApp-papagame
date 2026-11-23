.class public Lcom/windmill/sdk/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/widget/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/CountDownTimer;

.field private final b:J

.field private c:J

.field private d:Lcom/windmill/sdk/widget/d$a;


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "millisInFuture",
            "countDownInterval"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lcom/windmill/sdk/widget/d;->b:J

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/windmill/sdk/widget/d;->c:J

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/widget/d;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/windmill/sdk/widget/d;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/windmill/sdk/widget/d;)Lcom/windmill/sdk/widget/d$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/sdk/widget/d;->d:Lcom/windmill/sdk/widget/d$a;

    return-object p0
.end method

.method static synthetic b(Lcom/windmill/sdk/widget/d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/windmill/sdk/widget/d;->c:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 3
    new-instance v6, Lcom/windmill/sdk/widget/d$1;

    iget-wide v2, p0, Lcom/windmill/sdk/widget/d;->c:J

    iget-wide v4, p0, Lcom/windmill/sdk/widget/d;->b:J

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/windmill/sdk/widget/d$1;-><init>(Lcom/windmill/sdk/widget/d;JJ)V

    iput-object v6, p0, Lcom/windmill/sdk/widget/d;->a:Landroid/os/CountDownTimer;

    return-void
.end method

.method public a(Lcom/windmill/sdk/widget/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/widget/d;->d:Lcom/windmill/sdk/widget/d$a;

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/widget/d;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/d;->a:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/d;->a:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/widget/d;->a:Landroid/os/CountDownTimer;

    .line 7
    .line 8
    :cond_0
    return-void
.end method
