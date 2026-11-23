.class public Lcom/byazt/tub/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x33b,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tub/c;->c(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic tt:Lcom/byazt/tub/c;


# direct methods
.method public constructor <init>(Lcom/byazt/tub/c;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tub/c$3;->tt:Lcom/byazt/tub/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tub/c$3;->c:Landroid/graphics/Bitmap;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tub/c$3;->tt:Lcom/byazt/tub/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/tub/c;->c(Lcom/byazt/tub/c;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/tub/c$3;->tt:Lcom/byazt/tub/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/tub/c;->tt(Lcom/byazt/tub/c;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/byazt/vn/RoundImageView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/tub/c$3;->c:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
