.class public Lcom/byazt/si/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x260,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/si/tt;->c(Lcom/byazt/ga/i;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ga/i;

.field public final synthetic tt:Landroid/graphics/Bitmap;

.field public final synthetic ve:Lcom/byazt/si/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/si/tt;Lcom/byazt/ga/i;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/si/tt$2;->ve:Lcom/byazt/si/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/si/tt$2;->c:Lcom/byazt/ga/i;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/si/tt$2;->tt:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/si/tt$2;->ve:Lcom/byazt/si/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/si/tt;->sp(Lcom/byazt/si/tt;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/si/UgenLottieView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/si/tt$2;->c:Lcom/byazt/ga/i;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/byazt/ga/i;->t()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/byazt/si/tt$2;->tt:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    return-void
.end method
