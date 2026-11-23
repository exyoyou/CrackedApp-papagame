.class public Lcom/byazt/ysz/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ddx/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x24d,
        0x188
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ysz/a;->c(Landroid/content/Context;Lcom/byazt/eia/i;Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic sp:Lcom/byazt/ysz/a;

.field public final synthetic tt:Landroid/content/Context;

.field public final synthetic uj:I

.field public final synthetic ve:Lcom/byazt/eia/i;


# direct methods
.method public constructor <init>(Lcom/byazt/ysz/a;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Lcom/byazt/eia/i;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ysz/a$3;->sp:Lcom/byazt/ysz/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ysz/a$3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ysz/a$3;->tt:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ysz/a$3;->ve:Lcom/byazt/eia/i;

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/ysz/a$3;->uj:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/ysz/a$3;->n:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/ysz/a$3;->a:Ljava/util/Map;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 6

    .line 2
    iget-object p1, p0, Lcom/byazt/ysz/a$3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/ysz/a$3;->sp:Lcom/byazt/ysz/a;

    iget-object v1, p0, Lcom/byazt/ysz/a$3;->tt:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ysz/a$3;->ve:Lcom/byazt/eia/i;

    iget v3, p0, Lcom/byazt/ysz/a$3;->uj:I

    iget-object v4, p0, Lcom/byazt/ysz/a$3;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/byazt/ysz/a$3;->a:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/byazt/ysz/a;->c(Lcom/byazt/ysz/a;Landroid/content/Context;Lcom/byazt/eia/i;ILjava/lang/String;Ljava/util/Map;)I

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    .line 4
    iget-object p1, p0, Lcom/byazt/ysz/a$3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/ysz/a$3;->sp:Lcom/byazt/ysz/a;

    iget-object v1, p0, Lcom/byazt/ysz/a$3;->tt:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ysz/a$3;->ve:Lcom/byazt/eia/i;

    iget v3, p0, Lcom/byazt/ysz/a$3;->uj:I

    iget-object v4, p0, Lcom/byazt/ysz/a$3;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/byazt/ysz/a$3;->a:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/byazt/ysz/a;->c(Lcom/byazt/ysz/a;Landroid/content/Context;Lcom/byazt/eia/i;ILjava/lang/String;Ljava/util/Map;)I

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    return-void
.end method
