.class Lcom/join/mgps/customview/wheel/picker/WheelView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/wheel/picker/WheelView;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/wheel/picker/WheelView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/wheel/picker/WheelView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$b;->b:Lcom/join/mgps/customview/wheel/picker/WheelView;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$b;->b:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->g(Lcom/join/mgps/customview/wheel/picker/WheelView;)Lcom/join/mgps/customview/wheel/picker/WheelView$g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$b;->b:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->g(Lcom/join/mgps/customview/wheel/picker/WheelView;)Lcom/join/mgps/customview/wheel/picker/WheelView$g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$b;->b:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->h(Lcom/join/mgps/customview/wheel/picker/WheelView;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView$g;->onSelected(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$b;->b:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->i(Lcom/join/mgps/customview/wheel/picker/WheelView;)Lcom/join/mgps/customview/wheel/picker/WheelView$h;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$b;->b:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->i(Lcom/join/mgps/customview/wheel/picker/WheelView;)Lcom/join/mgps/customview/wheel/picker/WheelView$h;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$b;->b:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->h(Lcom/join/mgps/customview/wheel/picker/WheelView;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$b;->b:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/join/mgps/customview/wheel/picker/WheelView;->j(Lcom/join/mgps/customview/wheel/picker/WheelView;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$b;->b:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 51
    .line 52
    invoke-static {v3}, Lcom/join/mgps/customview/wheel/picker/WheelView;->h(Lcom/join/mgps/customview/wheel/picker/WheelView;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/join/mgps/customview/wheel/picker/entity/WheelItem;

    .line 61
    .line 62
    invoke-interface {v2}, Lcom/join/mgps/customview/wheel/picker/entity/WheelItem;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-interface {v0, v3, v1, v2}, Lcom/join/mgps/customview/wheel/picker/WheelView$h;->a(ZILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method
