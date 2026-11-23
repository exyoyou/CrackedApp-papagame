.class Lcom/join/mgps/customview/wheel/picker/DateTimePicker$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/wheel/picker/WheelView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->G()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$f;->a:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$f;->a:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->T0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$f;->a:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$f;->a:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$f;->a:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->S0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, p1, v1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;->c(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
