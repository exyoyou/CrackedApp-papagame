.class Lcom/join/mgps/joystick/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/core/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/joystick/a;->b()Lcom/papa/controller/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/joystick/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/joystick/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/joystick/a$b;->b:Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKeyDown(ILcom/papa/controller/core/PadKeyEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "padKeyEvent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a$b;->b:Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/joystick/a;->q(ILcom/papa/controller/core/PadKeyEvent;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onKeyPressure(IFLcom/papa/controller/core/PadKeyEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "pressure",
            "padKeyEvent"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/joystick/a$b;->b:Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/joystick/a;->q(ILcom/papa/controller/core/PadKeyEvent;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onKeyUp(ILcom/papa/controller/core/PadKeyEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "padKeyEvent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a$b;->b:Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/joystick/a;->q(ILcom/papa/controller/core/PadKeyEvent;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onLeftStick(FFLcom/papa/controller/core/PadMotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "padMotionEvent"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/joystick/a$b;->b:Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/join/mgps/joystick/a;->r(Lcom/papa/controller/core/PadMotionEvent;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRightStick(FFLcom/papa/controller/core/PadMotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "padMotionEvent"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/joystick/a$b;->b:Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/join/mgps/joystick/a;->r(Lcom/papa/controller/core/PadMotionEvent;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStateEvent(Lcom/papa/controller/core/PadStateEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padStateEvent"
        }
    .end annotation

    return-void
.end method
