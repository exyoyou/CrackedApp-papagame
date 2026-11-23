.class Lcom/join/mgps/customview/MyRadioGroup$b;
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
.field final synthetic b:Landroid/widget/RadioButton;

.field final synthetic c:Lcom/join/mgps/customview/MyRadioGroup;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/MyRadioGroup;Landroid/widget/RadioButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$button"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->c:Lcom/join/mgps/customview/MyRadioGroup;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->b:Landroid/widget/RadioButton;

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
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->b:Landroid/widget/RadioButton;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->c:Lcom/join/mgps/customview/MyRadioGroup;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->b:Landroid/widget/RadioButton;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/join/mgps/customview/MyRadioGroup;->a(Lcom/join/mgps/customview/MyRadioGroup;Landroid/widget/RadioButton;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->c:Lcom/join/mgps/customview/MyRadioGroup;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/customview/MyRadioGroup;->b(Lcom/join/mgps/customview/MyRadioGroup;)Lcom/join/mgps/customview/MyRadioGroup$d;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->c:Lcom/join/mgps/customview/MyRadioGroup;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/mgps/customview/MyRadioGroup;->b(Lcom/join/mgps/customview/MyRadioGroup;)Lcom/join/mgps/customview/MyRadioGroup$d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->c:Lcom/join/mgps/customview/MyRadioGroup;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->b:Landroid/widget/RadioButton;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/customview/MyRadioGroup$d;->a(Lcom/join/mgps/customview/MyRadioGroup;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return p2
.end method
