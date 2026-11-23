.class Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$b;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    const-string p2, "layout_inflater"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/view/LayoutInflater;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$b;->b:Landroid/view/LayoutInflater;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$b;->b:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    invoke-static {}, Lq9/a$b;->j()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$d;

    .line 15
    .line 16
    invoke-direct {p3, v0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$d;-><init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$a;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lq9/a$a;->m()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v0, p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$d;->b:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-static {}, Lq9/a$a;->l()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object v0, p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$d;->a:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    check-cast p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$d;

    .line 52
    .line 53
    :goto_0
    iget-object v0, p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$d;->b:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$b;->c:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$d;->a:Landroid/widget/ImageView;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$b;->c:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;->c:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    return-object p2
.end method
