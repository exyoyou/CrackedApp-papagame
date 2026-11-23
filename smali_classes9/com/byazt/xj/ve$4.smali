.class public Lcom/byazt/xj/ve$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sa/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5bf,
        0x187
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xj/ve;->yv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xj/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/xj/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xj/ve$4;->c:Lcom/byazt/xj/ve;

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
    iget-object p1, p0, Lcom/byazt/xj/ve$4;->c:Lcom/byazt/xj/ve;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p1, Lcom/byazt/xj/ve;->pf:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v0, p1, v1}, Lcom/byazt/sz/sp;->tt(Lcom/byazt/xj/ve;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/xj/ve$4;->c:Lcom/byazt/xj/ve;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v2, v0, Lcom/byazt/xj/ve;->pf:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v1, v0, v2}, Lcom/byazt/sz/sp;->c(Lcom/byazt/xj/ve;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/byazt/xj/ve$4;->c:Lcom/byazt/xj/ve;

    .line 27
    .line 28
    iget-boolean v1, v0, Lcom/byazt/xj/ve;->aw:Z

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    iget-object v1, v0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 33
    .line 34
    iget v0, v0, Lcom/byazt/xj/ve;->sv:F

    .line 35
    .line 36
    float-to-int v0, v0

    .line 37
    invoke-static {v1, p1, v0}, Lcom/byazt/cd/x;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    new-instance v0, Lcom/byazt/xj/ve$4$1;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Lcom/byazt/xj/ve$4$1;-><init>(Lcom/byazt/xj/ve$4;Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/byazt/cd/x;->c(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void

    .line 52
    :cond_4
    new-instance v0, Lcom/byazt/xj/ve$4$2;

    .line 53
    .line 54
    invoke-direct {v0, p0, p1}, Lcom/byazt/xj/ve$4$2;-><init>(Lcom/byazt/xj/ve$4;Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/byazt/cd/x;->c(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
