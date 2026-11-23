.class public Lcom/byazt/cc/a$c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x8a5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/im/i;

.field public final synthetic tt:Lcom/byazt/cc/a$c;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a$c;Lcom/byazt/im/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$c$4;->tt:Lcom/byazt/cc/a$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cc/a$c$4;->c:Lcom/byazt/im/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/a$c$4;->tt:Lcom/byazt/cc/a$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/cc/a;->rh(Lcom/byazt/cc/a;)Lcom/byazt/nh/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/cc/a$c$4;->c:Lcom/byazt/im/i;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/cc/a$c$4;->tt:Lcom/byazt/cc/a$c;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/im/i;->c()Lcom/byazt/nc/tt;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {v1, v0, v2}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/cc/a$c$4;->tt:Lcom/byazt/cc/a$c;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/cc/a;->rh(Lcom/byazt/cc/a;)Lcom/byazt/nh/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/byazt/cc/a$c$4;->c:Lcom/byazt/im/i;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/byazt/im/i;->c()Lcom/byazt/nc/tt;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/byazt/nh/c;->tt(Lcom/byazt/nc/tt;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
