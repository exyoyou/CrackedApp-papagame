.class Lcom/windmill/sdk/widget/d$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/d;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/d;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/d$1;->a:Lcom/windmill/sdk/widget/d;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/d$1;->a:Lcom/windmill/sdk/widget/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/widget/d;->a(Lcom/windmill/sdk/widget/d;)Lcom/windmill/sdk/widget/d$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/widget/d$1;->a:Lcom/windmill/sdk/widget/d;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/widget/d;->a(Lcom/windmill/sdk/widget/d;)Lcom/windmill/sdk/widget/d$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/windmill/sdk/widget/d$a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/d$1;->a:Lcom/windmill/sdk/widget/d;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/windmill/sdk/widget/d;->a(Lcom/windmill/sdk/widget/d;J)J

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/windmill/sdk/widget/d$1;->a:Lcom/windmill/sdk/widget/d;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/windmill/sdk/widget/d;->a(Lcom/windmill/sdk/widget/d;)Lcom/windmill/sdk/widget/d$a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/windmill/sdk/widget/d$1;->a:Lcom/windmill/sdk/widget/d;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/windmill/sdk/widget/d;->a(Lcom/windmill/sdk/widget/d;)Lcom/windmill/sdk/widget/d$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/windmill/sdk/widget/d$1;->a:Lcom/windmill/sdk/widget/d;

    .line 21
    .line 22
    invoke-static {p2}, Lcom/windmill/sdk/widget/d;->b(Lcom/windmill/sdk/widget/d;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-interface {p1, v0, v1}, Lcom/windmill/sdk/widget/d$a;->a(J)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
