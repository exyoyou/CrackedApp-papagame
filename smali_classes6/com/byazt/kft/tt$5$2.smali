.class public Lcom/byazt/kft/tt$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x9ba
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/tt$5;->onPrepared(Lcom/byazt/fk/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kft/tt$5;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/tt$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/tt$5$2;->c:Lcom/byazt/kft/tt$5;

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
    iget-object v0, p0, Lcom/byazt/kft/tt$5$2;->c:Lcom/byazt/kft/tt$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/byazt/kft/tt;->ve(Lcom/byazt/kft/tt;Z)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/kft/tt$5$2;->c:Lcom/byazt/kft/tt$5;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/kft/tt;->x(Lcom/byazt/kft/tt;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/kft/tt$5$2;->c:Lcom/byazt/kft/tt$5;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/kft/tt;->i(Lcom/byazt/kft/tt;)Lcom/byazt/fk/sp;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/byazt/fk/sp;->pause()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/tt$5$2;->c:Lcom/byazt/kft/tt$5;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 35
    .line 36
    invoke-interface {v1, v0}, Lcom/byazt/fk/sp$c;->onPrepared(Lcom/byazt/fk/sp;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/kft/tt$5$2;->c:Lcom/byazt/kft/tt$5;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/byazt/kft/tt;->a(Lcom/byazt/kft/tt;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
