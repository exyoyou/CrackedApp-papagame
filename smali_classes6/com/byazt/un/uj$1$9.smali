.class public Lcom/byazt/un/uj$1$9;
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
        0x7f5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/uj$1;->onPlayPositionUpdate(Lcom/byazt/fk/sp;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/un/uj$1;


# direct methods
.method public constructor <init>(Lcom/byazt/un/uj$1;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/uj$1$9;->ve:Lcom/byazt/un/uj$1;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/un/uj$1$9;->c:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/un/uj$1$9;->tt:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/un/uj$1$9;->ve:Lcom/byazt/un/uj$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/un/uj;->os(Lcom/byazt/un/uj;)Lcom/byazt/nj/c$c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/un/uj$1$9;->ve:Lcom/byazt/un/uj$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/un/uj;->oz(Lcom/byazt/un/uj;)Lcom/byazt/nj/c$c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-wide v1, p0, Lcom/byazt/un/uj$1$9;->c:J

    .line 20
    .line 21
    iget-wide v3, p0, Lcom/byazt/un/uj$1$9;->tt:J

    .line 22
    .line 23
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/byazt/nj/c$c;->c(JJ)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/uj$1$9;->ve:Lcom/byazt/un/uj$1;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 29
    .line 30
    iget-wide v1, p0, Lcom/byazt/un/uj$1$9;->c:J

    .line 31
    .line 32
    iget-wide v3, p0, Lcom/byazt/un/uj$1$9;->tt:J

    .line 33
    .line 34
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;JJ)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/un/uj$1$9;->ve:Lcom/byazt/un/uj$1;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 40
    .line 41
    iget-wide v1, p0, Lcom/byazt/un/uj$1$9;->c:J

    .line 42
    .line 43
    iget-wide v3, p0, Lcom/byazt/un/uj$1$9;->tt:J

    .line 44
    .line 45
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/un/uj;->tt(Lcom/byazt/un/uj;JJ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
