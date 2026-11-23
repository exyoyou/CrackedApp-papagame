.class public Lcom/byazt/oq/DynamicLottieView$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x809
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/DynamicLottieView$3;->c(Lcom/byazt/ga/i;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ga/i;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/oq/DynamicLottieView$3;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/DynamicLottieView$3;Lcom/byazt/ga/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/DynamicLottieView$3$2;->ve:Lcom/byazt/oq/DynamicLottieView$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/oq/DynamicLottieView$3$2;->c:Lcom/byazt/ga/i;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/oq/DynamicLottieView$3$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public coverterTo(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/oq/DynamicLottieView$3$2;->c:Lcom/byazt/ga/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/i;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/oq/DynamicLottieView$3$2;->c:Lcom/byazt/ga/i;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/byazt/ga/i;->tt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/byazt/oq/DynamicLottieView$3$2;->ve:Lcom/byazt/oq/DynamicLottieView$3;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/byazt/oq/DynamicLottieView$3;->c:Lcom/byazt/oq/DynamicLottieView;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/oq/DynamicLottieView;->tt(Lcom/byazt/oq/DynamicLottieView;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/oq/DynamicLottieView$3$2;->ve:Lcom/byazt/oq/DynamicLottieView$3;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/byazt/oq/DynamicLottieView$3;->c:Lcom/byazt/oq/DynamicLottieView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/byazt/oq/DynamicLottieView;->tt(Lcom/byazt/oq/DynamicLottieView;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/byazt/oq/DynamicLottieView$3$2;->tt:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_0
    return-object p1
.end method
