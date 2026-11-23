.class Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;

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
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->a(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;->a:Landroid/accounts/AuthenticatorDescription;

    .line 14
    .line 15
    iget-object p2, p2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->b(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
