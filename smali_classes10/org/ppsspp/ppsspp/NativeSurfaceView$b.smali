.class Lorg/ppsspp/ppsspp/NativeSurfaceView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ppsspp/ppsspp/NativeSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lorg/ppsspp/ppsspp/NativeSurfaceView;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/NativeSurfaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;->b:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;->b:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 5
    .line 6
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->a(Lorg/ppsspp/ppsspp/NativeSurfaceView;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x7

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;->b:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 14
    .line 15
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->a(Lorg/ppsspp/ppsspp/NativeSurfaceView;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;->b:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 25
    .line 26
    const/4 v0, 0x6

    .line 27
    invoke-static {p1, v0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->b(Lorg/ppsspp/ppsspp/NativeSurfaceView;I)I

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;->b:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 31
    .line 32
    iget-object v0, p1, Lorg/ppsspp/ppsspp/NativeSurfaceView;->l:Lorg/ppsspp/ppsspp/NativeGLView$a;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->a(Lorg/ppsspp/ppsspp/NativeSurfaceView;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-interface {v0, p1}, Lorg/ppsspp/ppsspp/NativeGLView$a;->getMode(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method
