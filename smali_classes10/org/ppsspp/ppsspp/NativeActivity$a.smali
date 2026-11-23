.class Lorg/ppsspp/ppsspp/NativeActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ppsspp/ppsspp/NativeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/ppsspp/ppsspp/NativeActivity;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/NativeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity$a;->b:Lorg/ppsspp/ppsspp/NativeActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeActivity;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "Starting the render loop: "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity$a;->b:Lorg/ppsspp/ppsspp/NativeActivity;

    .line 15
    .line 16
    invoke-static {v1}, Lorg/ppsspp/ppsspp/NativeActivity;->access$100(Lorg/ppsspp/ppsspp/NativeActivity;)Landroid/view/Surface;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity$a;->b:Lorg/ppsspp/ppsspp/NativeActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeActivity;->access$100(Lorg/ppsspp/ppsspp/NativeActivity;)Landroid/view/Surface;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lorg/ppsspp/ppsspp/NativeActivity;->runEGLRenderLoop(Landroid/view/Surface;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeActivity;->access$000()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeActivity;->access$000()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "Left the render loop: "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity$a;->b:Lorg/ppsspp/ppsspp/NativeActivity;

    .line 52
    .line 53
    invoke-static {v1}, Lorg/ppsspp/ppsspp/NativeActivity;->access$100(Lorg/ppsspp/ppsspp/NativeActivity;)Landroid/view/Surface;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    return-void
.end method
