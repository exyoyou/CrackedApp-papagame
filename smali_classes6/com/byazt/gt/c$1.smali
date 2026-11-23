.class public Lcom/byazt/gt/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sa/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc3,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gt/c;->yv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gt/c;


# direct methods
.method public constructor <init>(Lcom/byazt/gt/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gt/c$1;->c:Lcom/byazt/gt/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/gt/c$1;->c:Lcom/byazt/gt/c;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/byazt/gt/c;->c(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/byazt/gt/c$1;->c:Lcom/byazt/gt/c;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/byazt/gt/c;->ve(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/byazt/gt/c$1;->c:Lcom/byazt/gt/c;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/gt/c;->tt(Lcom/byazt/gt/c;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p1, v0, v1}, Lcom/byazt/sz/sp;->tt(Lcom/byazt/xj/ve;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/byazt/gt/c$1;->c:Lcom/byazt/gt/c;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/gt/c;->uj(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/gt/c$1;->c:Lcom/byazt/gt/c;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/gt/c;->a(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/byazt/gt/c$1;->c:Lcom/byazt/gt/c;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/byazt/gt/c;->n(Lcom/byazt/gt/c;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v0, v1, v2}, Lcom/byazt/sz/sp;->c(Lcom/byazt/xj/ve;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/byazt/gt/c$1;->c:Lcom/byazt/gt/c;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/byazt/gt/c;->sp(Lcom/byazt/gt/c;)Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/byazt/gt/c$1;->c:Lcom/byazt/gt/c;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/byazt/gt/c;->x(Lcom/byazt/gt/c;)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    float-to-int v1, v1

    .line 63
    invoke-static {v0, p1, v1}, Lcom/byazt/cd/x;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    new-instance v0, Lcom/byazt/gt/c$1$1;

    .line 70
    .line 71
    invoke-direct {v0, p0, p1}, Lcom/byazt/gt/c$1$1;-><init>(Lcom/byazt/gt/c$1;Landroid/graphics/Bitmap;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/byazt/cd/x;->c(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method
