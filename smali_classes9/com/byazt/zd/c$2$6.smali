.class public Lcom/byazt/zd/c$2$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x647,
        0x743
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zd/c$2;->onBufferStart(Lcom/byazt/fk/sp;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zd/c$2;


# direct methods
.method public constructor <init>(Lcom/byazt/zd/c$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zd/c$2$6;->c:Lcom/byazt/zd/c$2;

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
    iget-object v0, p0, Lcom/byazt/zd/c$2$6;->c:Lcom/byazt/zd/c$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/zd/c;->h(Lcom/byazt/zd/c;)Lcom/byazt/un/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/zd/c$2$6;->c:Lcom/byazt/zd/c$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/zd/c;->n(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/zd/c$2$6;->c:Lcom/byazt/zd/c$2;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/zd/c;->d(Lcom/byazt/zd/c;)Lcom/byazt/un/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/byazt/un/a;->gu()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/zd/c$2$6;->c:Lcom/byazt/zd/c$2;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/zd/c;->aw()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/zd/c$2$6;->c:Lcom/byazt/zd/c$2;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {v0, v1}, Lcom/byazt/zd/c;->tt(Lcom/byazt/zd/c;Z)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
