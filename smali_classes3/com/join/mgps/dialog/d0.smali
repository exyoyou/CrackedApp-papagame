.class public Lcom/join/mgps/dialog/d0;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/d0$c;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lv6/c;

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dialog/d0;->b:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lv6/c;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "theme",
            "couponsDatas",
            "cardIDNumber",
            "money",
            "isMixPay"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;",
            "Lv6/c;",
            "IZ)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/dialog/d0;->b:Z

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->d:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Lcom/join/mgps/dialog/d0;->e:Ljava/util/List;

    .line 10
    iput-object p4, p0, Lcom/join/mgps/dialog/d0;->f:Lv6/c;

    .line 11
    iput p5, p0, Lcom/join/mgps/dialog/d0;->c:I

    .line 12
    iput-boolean p6, p0, Lcom/join/mgps/dialog/d0;->b:Z

    .line 13
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cancelable",
            "cancelListener"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/join/mgps/dialog/d0;->b:Z

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/d0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/dialog/d0;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/d0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/d0;->d:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/d0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/dialog/d0;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/d0;)Lv6/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/d0;->f:Lv6/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/dialog/d0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/d0;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/dialog/d0;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/d0;->h:Landroid/widget/Button;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/d0;->d:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const v0, 0x7f0d07a8

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a0e88

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/ListView;

    .line 29
    .line 30
    const v1, 0x7f0a1188

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/Button;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->h:Landroid/widget/Button;

    .line 40
    .line 41
    new-instance p1, Lcom/join/mgps/dialog/d0$c;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/d0$c;-><init>(Lcom/join/mgps/dialog/d0;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/join/mgps/dialog/d0$a;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/d0$a;-><init>(Lcom/join/mgps/dialog/d0;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/dialog/d0;->h:Landroid/widget/Button;

    .line 58
    .line 59
    new-instance v0, Lcom/join/mgps/dialog/d0$b;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/d0$b;-><init>(Lcom/join/mgps/dialog/d0;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
