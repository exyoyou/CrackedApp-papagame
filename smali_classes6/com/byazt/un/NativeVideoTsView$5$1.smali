.class public Lcom/byazt/un/NativeVideoTsView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x53a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/NativeVideoTsView$5;->onSuccess(Lcom/byazt/yj/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/graphics/drawable/Drawable;

.field public final synthetic tt:Lcom/byazt/un/NativeVideoTsView$5;


# direct methods
.method public constructor <init>(Lcom/byazt/un/NativeVideoTsView$5;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView$5$1;->tt:Lcom/byazt/un/NativeVideoTsView$5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/un/NativeVideoTsView$5$1;->c:Landroid/graphics/drawable/Drawable;

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
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$5$1;->tt:Lcom/byazt/un/NativeVideoTsView$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/un/NativeVideoTsView$5;->ve:Lcom/byazt/dh/tt;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView$5$1;->c:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/byazt/dh/tt;->c(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
