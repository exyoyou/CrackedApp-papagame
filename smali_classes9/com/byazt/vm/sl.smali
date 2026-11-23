.class public Lcom/byazt/vm/sl;
.super Lcom/byazt/kbg/c$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa5,
        0x9e
    }
.end annotation


# instance fields
.field public volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/kbg/c$c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/vm/sl;->c:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c(IJZFDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "oa_id_limit_state"

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/vm/sl;->c:Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/byazt/vm/sl;->c:Z

    return v0
.end method
