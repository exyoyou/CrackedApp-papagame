.class public Lcom/papa/controller/component/inputmanagercompat/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/component/inputmanagercompat/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/component/inputmanagercompat/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/hardware/input/InputManager;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/papa/controller/component/inputmanagercompat/a$b;",
            "Lcom/papa/controller/component/inputmanagercompat/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "input"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/papa/controller/component/inputmanagercompat/b;->a:Landroid/hardware/input/InputManager;

    .line 13
    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/papa/controller/component/inputmanagercompat/b;->b:Ljava/util/Map;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/papa/controller/component/inputmanagercompat/a$b;Landroid/os/Handler;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/controller/component/inputmanagercompat/b$a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/papa/controller/component/inputmanagercompat/b$a;-><init>(Lcom/papa/controller/component/inputmanagercompat/a$b;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa/controller/component/inputmanagercompat/b;->a:Landroid/hardware/input/InputManager;

    .line 7
    .line 8
    invoke-virtual {v1, v0, p2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/papa/controller/component/inputmanagercompat/b;->b:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b(I)Landroid/view/InputDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b;->a:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Lcom/papa/controller/component/inputmanagercompat/a$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/papa/controller/component/inputmanagercompat/b$a;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b;->a:Landroid/hardware/input/InputManager;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public d()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/b;->a:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
