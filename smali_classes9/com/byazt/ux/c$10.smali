.class public Lcom/byazt/ux/c$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qr/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x278
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ux/c;->c(Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/qr/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xj/ve;

.field public final synthetic tt:Lcom/byazt/ux/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ux/c;Lcom/byazt/xj/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ux/c$10;->tt:Lcom/byazt/ux/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ux/c$10;->c:Lcom/byazt/xj/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/ux/c$10;->c:Lcom/byazt/xj/ve;

    check-cast v0, Lcom/byazt/vn/tt;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/byazt/ux/c$10;->tt:Lcom/byazt/ux/c;

    iget-object v2, v2, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/byazt/vn/tt;->tt(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/byazt/ux/c$10;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
