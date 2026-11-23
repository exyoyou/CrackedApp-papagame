.class Lcom/join/mgps/joystick/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/core/ControllerManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/joystick/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/joystick/a;


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
    iput-object p1, p0, Lcom/join/mgps/joystick/a$a;->a:Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onControllerDeviceAdded(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/joystick/a$a;->a:Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/d;->p()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/joystick/a$a;->a:Lcom/join/mgps/joystick/a;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p1, v0, v1}, Lcom/join/mgps/joystick/a;->a(Lcom/join/mgps/joystick/a;ILjava/util/List;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onControllerDeviceRemoved(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/joystick/a$a;->a:Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/d;->p()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/joystick/a$a;->a:Lcom/join/mgps/joystick/a;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p1, v1, v0}, Lcom/join/mgps/joystick/a;->a(Lcom/join/mgps/joystick/a;ILjava/util/List;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
