.class public final Lcom/byazt/nr/z$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x274,
        0x41c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nr/z;->tt(Landroid/graphics/Bitmap;Lcom/byazt/qr/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Landroid/graphics/Bitmap;

.field public final synthetic ve:Lcom/byazt/qr/c;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Lcom/byazt/qr/c;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/nr/z$5;->c:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nr/z$5;->tt:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/nr/z$5;->ve:Lcom/byazt/qr/c;

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
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Lcom/byazt/nr/z$5;->c:I

    .line 2
    .line 3
    const/16 v1, 0xa0

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/nr/z$5;->tt:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/nr/z$5;->ve:Lcom/byazt/qr/c;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/nr/z$5;->tt:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/byazt/qr/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    return-void
.end method
