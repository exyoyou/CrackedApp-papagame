.class Lcom/aggmoread/sdk/z/a/m/m$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/m/m;->b(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/m/m;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/m/m;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/m/m$a;->a:Lcom/aggmoread/sdk/z/a/m/m;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/m/m$a;->a:Lcom/aggmoread/sdk/z/a/m/m;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/m/m;->c()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/m/m$a;->a:Lcom/aggmoread/sdk/z/a/m/m;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/m/m;->g()V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/m/m$a;->a:Lcom/aggmoread/sdk/z/a/m/m;

    invoke-virtual {v0, p1, p2}, Lcom/aggmoread/sdk/z/a/m/m;->a(J)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/m/m$a;->a:Lcom/aggmoread/sdk/z/a/m/m;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/m/m;->a(Lcom/aggmoread/sdk/z/a/m/m;)J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/aggmoread/sdk/z/a/m/m;->a(JJ)V

    return-void
.end method
