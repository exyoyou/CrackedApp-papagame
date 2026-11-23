.class Lcom/join/mgps/dialog/h2$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/h2;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/h2;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/h2;JJ)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/h2$a;->a:Lcom/join/mgps/dialog/h2;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/dialog/h2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/h2$a;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h2$a;->a:Lcom/join/mgps/dialog/h2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/dialog/h2;->n(Lcom/join/mgps/dialog/h2;)Landroid/widget/Button;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/h2$a;->a:Lcom/join/mgps/dialog/h2;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/dialog/h2;->n(Lcom/join/mgps/dialog/h2;)Landroid/widget/Button;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "\u5f00\u59cb\u6311\u6218"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h2$a;->a:Lcom/join/mgps/dialog/h2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/dialog/h2;->o(Lcom/join/mgps/dialog/h2;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/h2$a;->a:Lcom/join/mgps/dialog/h2;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/dialog/h2;->p(Lcom/join/mgps/dialog/h2;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/join/mgps/dialog/g2;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/g2;-><init>(Lcom/join/mgps/dialog/h2$a;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0xc8

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h2$a;->a:Lcom/join/mgps/dialog/h2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/dialog/h2;->n(Lcom/join/mgps/dialog/h2;)Landroid/widget/Button;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "\u5f00\u59cb\u6311\u6218\uff08"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    div-long/2addr p1, v2

    .line 20
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, "\uff09"

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
