.class public Lcom/byazt/oq/DynamicLottieView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x4a3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/DynamicLottieView$1;->c(Lcom/byazt/ga/i;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/yj/gr<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ga/i;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/oq/DynamicLottieView$1;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/DynamicLottieView$1;Lcom/byazt/ga/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/DynamicLottieView$1$1;->ve:Lcom/byazt/oq/DynamicLottieView$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/oq/DynamicLottieView$1$1;->c:Lcom/byazt/ga/i;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/oq/DynamicLottieView$1$1;->tt:Ljava/lang/String;

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

    return-void
.end method

.method public onSuccess(Lcom/byazt/yj/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/yj/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/graphics/Bitmap;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/oq/DynamicLottieView$1$1;->c:Lcom/byazt/ga/i;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/ga/i;->c()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/byazt/oq/DynamicLottieView$1$1;->c:Lcom/byazt/ga/i;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/byazt/ga/i;->tt()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/byazt/oq/DynamicLottieView$1$1;->ve:Lcom/byazt/oq/DynamicLottieView$1;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/byazt/oq/DynamicLottieView$1;->c:Lcom/byazt/oq/DynamicLottieView;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/oq/DynamicLottieView;->tt(Lcom/byazt/oq/DynamicLottieView;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/byazt/oq/DynamicLottieView$1$1;->tt:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/oq/DynamicLottieView$1$1;->ve:Lcom/byazt/oq/DynamicLottieView$1;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/byazt/oq/DynamicLottieView$1;->c:Lcom/byazt/oq/DynamicLottieView;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/byazt/oq/DynamicLottieView$1$1;->c:Lcom/byazt/ga/i;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/byazt/ga/i;->t()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1, p1}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    return-void
.end method
