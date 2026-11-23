.class public Lcom/byazt/lph/uj;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x189,
        0xf
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/lph/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "csj_openlog"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/lph/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lph/uj;->c:Lcom/byazt/lph/n;

    .line 2
    .line 3
    return-void
.end method

.method public onLooperPrepared()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/lph/uj;->c:Lcom/byazt/lph/n;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/lph/n;->ve()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
