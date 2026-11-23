.class Lcom/join/mgps/dialog/z0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/z0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Lcom/join/mgps/dialog/z0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/z0;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$manCheckbox",
            "val$girlCheckbox"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/z0$a;->d:Lcom/join/mgps/dialog/z0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/dialog/z0$a;->b:Landroid/widget/CheckBox;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/dialog/z0$a;->c:Landroid/widget/CheckBox;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/z0$a;->d:Lcom/join/mgps/dialog/z0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/z0;->a(Lcom/join/mgps/dialog/z0;)Lcom/join/mgps/dialog/z0$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/z0$c;->checkedGender(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/z0$a;->b:Landroid/widget/CheckBox;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/dialog/z0$a;->c:Landroid/widget/CheckBox;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/dialog/z0$a;->d:Lcom/join/mgps/dialog/z0;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
