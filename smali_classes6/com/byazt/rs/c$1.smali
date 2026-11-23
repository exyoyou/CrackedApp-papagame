.class public Lcom/byazt/rs/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x288,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rs/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/rs/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/rs/i;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/rs/c;


# direct methods
.method public constructor <init>(Lcom/byazt/rs/c;Lcom/byazt/rs/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rs/c$1;->ve:Lcom/byazt/rs/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/rs/c$1;->c:Lcom/byazt/rs/i;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/rs/c$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/rs/c$1;->c:Lcom/byazt/rs/i;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/byazt/rs/i;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSuccess(Lcom/byazt/yj/m;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/graphics/Bitmap;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/rs/c$1;->ve:Lcom/byazt/rs/c;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/byazt/rs/c$1;->tt:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/byazt/rs/c;->c(Lcom/byazt/rs/c;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/rs/c$1;->c:Lcom/byazt/rs/i;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/byazt/rs/i;->c(Landroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/byazt/rs/c$1;->c:Lcom/byazt/rs/i;

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/byazt/rs/i;->c()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
