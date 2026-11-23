.class Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;

    .line 2
    .line 3
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->a(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;I)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->b(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
