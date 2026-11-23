.class public Lcom/byazt/xj/ve$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5bf,
        0x70f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xj/ve$4;->c(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic tt:Lcom/byazt/xj/ve$4;


# direct methods
.method public constructor <init>(Lcom/byazt/xj/ve$4;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/xj/ve$4$1;->tt:Lcom/byazt/xj/ve$4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xj/ve$4$1;->c:Landroid/graphics/Bitmap;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve$4$1;->tt:Lcom/byazt/xj/ve$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/xj/ve$4;->c:Lcom/byazt/xj/ve;

    .line 4
    .line 5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/xj/ve$4$1;->c:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->c(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
