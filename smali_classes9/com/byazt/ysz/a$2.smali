.class public Lcom/byazt/ysz/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x24d,
        0xfe
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
    iput-object p1, p0, Lcom/byazt/ysz/a$2;->sp:Lcom/byazt/ysz/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ysz/a$2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ysz/a$2;->tt:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ysz/a$2;->ve:Lcom/byazt/eia/i;

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/ysz/a$2;->uj:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/ysz/a$2;->n:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/ysz/a$2;->a:Ljava/util/Map;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/ysz/a$2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/ysz/a$2;->sp:Lcom/byazt/ysz/a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/ysz/a$2;->tt:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/byazt/ysz/a$2;->ve:Lcom/byazt/eia/i;

    .line 16
    .line 17
    iget v4, p0, Lcom/byazt/ysz/a$2;->uj:I

    .line 18
    .line 19
    iget-object v5, p0, Lcom/byazt/ysz/a$2;->n:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v6, p0, Lcom/byazt/ysz/a$2;->a:Ljava/util/Map;

    .line 22
    .line 23
    invoke-static/range {v1 .. v6}, Lcom/byazt/ysz/a;->c(Lcom/byazt/ysz/a;Landroid/content/Context;Lcom/byazt/eia/i;ILjava/lang/String;Ljava/util/Map;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
