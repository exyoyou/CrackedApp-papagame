.class public Lcom/byazt/nm/c$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x67f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/c$c;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/c$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$c$2;->c:Lcom/byazt/nm/c$c;

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
    iget-object v0, p0, Lcom/byazt/nm/c$c$2;->c:Lcom/byazt/nm/c$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nm/c$c;->uj(Lcom/byazt/nm/c$c;)Lcom/byazt/nc/da;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nm/c$c$2;->c:Lcom/byazt/nm/c$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/nm/c$c;->uj(Lcom/byazt/nm/c$c;)Lcom/byazt/nc/da;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/nc/da;->setVideoAdListener(Lcom/byazt/bf/c;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/nm/c$c$2;->c:Lcom/byazt/nm/c$c;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/nm/c$c;->uj(Lcom/byazt/nm/c$c;)Lcom/byazt/nc/da;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/nc/x;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/nm/c$c$2;->c:Lcom/byazt/nm/c$c;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/byazt/nm/c$c;->uj(Lcom/byazt/nm/c$c;)Lcom/byazt/nc/da;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/byazt/nc/u;->destroy()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
