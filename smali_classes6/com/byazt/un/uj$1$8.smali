.class public Lcom/byazt/un/uj$1$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x7f6
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/uj$1;->onBufferEnd(Lcom/byazt/fk/sp;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/uj$1;


# direct methods
.method public constructor <init>(Lcom/byazt/un/uj$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/uj$1$8;->c:Lcom/byazt/un/uj$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/uj$1$8;->c:Lcom/byazt/un/uj$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/un/uj;->tk(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/un/uj$1$8;->c:Lcom/byazt/un/uj$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/un/uj;->kp(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/byazt/un/a;->tt()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/uj$1$8;->c:Lcom/byazt/un/uj$1;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/un/uj;->b(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/byazt/un/uj$1$8;->c:Lcom/byazt/un/uj$1;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/byazt/un/uj;->p:Ljava/lang/Runnable;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/un/uj$1$8;->c:Lcom/byazt/un/uj$1;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {v0, v1}, Lcom/byazt/un/uj;->tt(Lcom/byazt/un/uj;Z)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
