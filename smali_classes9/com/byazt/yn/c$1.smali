.class public Lcom/byazt/yn/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sa/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x54d,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yn/c;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/yn/c;


# direct methods
.method public constructor <init>(Lcom/byazt/yn/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yn/c$1;->c:Lcom/byazt/yn/c;

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
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/yn/c$1;->c:Lcom/byazt/yn/c;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/byazt/yn/c;->c(Lcom/byazt/yn/c;)Lcom/byazt/sz/sp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/byazt/yn/c$1;->c:Lcom/byazt/yn/c;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/byazt/yn/c;->tt(Lcom/byazt/yn/c;)Lcom/byazt/sz/sp;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/byazt/yn/c$1;->c:Lcom/byazt/yn/c;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/byazt/yn/c;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Lcom/byazt/sz/sp;->tt(Lcom/byazt/xj/ve;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/yn/c$1;->c:Lcom/byazt/yn/c;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/byazt/yn/c;->ve(Lcom/byazt/yn/c;)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    cmpl-float v1, v1, v2

    .line 36
    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/byazt/yn/c$1;->c:Lcom/byazt/yn/c;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/byazt/yn/c;->uj(Lcom/byazt/yn/c;)Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/byazt/yn/c$1;->c:Lcom/byazt/yn/c;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/byazt/yn/c;->ve(Lcom/byazt/yn/c;)F

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    float-to-int v2, v2

    .line 52
    invoke-static {v1, p1, v2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x0

    .line 57
    aput-object v1, v0, v2

    .line 58
    .line 59
    :cond_1
    new-instance v1, Lcom/byazt/yn/c$1$1;

    .line 60
    .line 61
    invoke-direct {v1, p0, v0, p1}, Lcom/byazt/yn/c$1$1;-><init>(Lcom/byazt/yn/c$1;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lcom/byazt/cd/x;->c(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/byazt/yn/c$1;->c:Lcom/byazt/yn/c;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/byazt/yn/c;->a(Lcom/byazt/yn/c;)Lcom/byazt/sz/sp;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/byazt/yn/c$1;->c:Lcom/byazt/yn/c;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/byazt/yn/c;->sp(Lcom/byazt/yn/c;)Lcom/byazt/sz/sp;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/byazt/yn/c$1;->c:Lcom/byazt/yn/c;

    .line 82
    .line 83
    iget-object v1, v0, Lcom/byazt/yn/c;->c:Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {p1, v0, v1}, Lcom/byazt/sz/sp;->c(Lcom/byazt/xj/ve;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method
