.class Lcom/join/mgps/customview/MyRadioGroup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/MyRadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/join/mgps/customview/MyRadioGroup;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/MyRadioGroup;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$child"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$a;->c:Lcom/join/mgps/customview/MyRadioGroup;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/MyRadioGroup$a;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$a;->b:Landroid/view/View;

    .line 2
    .line 3
    check-cast p1, Landroid/widget/RadioButton;

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$a;->c:Lcom/join/mgps/customview/MyRadioGroup;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup$a;->b:Landroid/view/View;

    .line 12
    .line 13
    check-cast v0, Landroid/widget/RadioButton;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/join/mgps/customview/MyRadioGroup;->a(Lcom/join/mgps/customview/MyRadioGroup;Landroid/widget/RadioButton;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$a;->c:Lcom/join/mgps/customview/MyRadioGroup;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/customview/MyRadioGroup;->b(Lcom/join/mgps/customview/MyRadioGroup;)Lcom/join/mgps/customview/MyRadioGroup$d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$a;->c:Lcom/join/mgps/customview/MyRadioGroup;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/customview/MyRadioGroup;->b(Lcom/join/mgps/customview/MyRadioGroup;)Lcom/join/mgps/customview/MyRadioGroup$d;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup$a;->c:Lcom/join/mgps/customview/MyRadioGroup;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/customview/MyRadioGroup$a;->b:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/customview/MyRadioGroup$d;->a(Lcom/join/mgps/customview/MyRadioGroup;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return p2
.end method
