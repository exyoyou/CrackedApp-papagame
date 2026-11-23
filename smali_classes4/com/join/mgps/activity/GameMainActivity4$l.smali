.class Lcom/join/mgps/activity/GameMainActivity4$l;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainActivity4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameMainActivity4$l$b;
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameMainActivity4;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 2
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/GameMainActivity4;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "themeResId"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 6
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/join/mgps/activity/GameMainActivity4;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "cancelable",
            "cancelListener"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 4
    invoke-direct {p0, p2, p3, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
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
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 6
    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity4;->access$100(Lcom/join/mgps/activity/GameMainActivity4;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const v0, 0x7f0d077f

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v0, 0x7f0a0e8e

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/ListView;

    .line 38
    .line 39
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity4$l$b;

    .line 40
    .line 41
    invoke-direct {v2, p0, v1}, Lcom/join/mgps/activity/GameMainActivity4$l$b;-><init>(Lcom/join/mgps/activity/GameMainActivity4$l;Lcom/join/mgps/activity/GameMainActivity4$b;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/join/mgps/activity/GameMainActivity4$l$a;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivity4$l$a;-><init>(Lcom/join/mgps/activity/GameMainActivity4$l;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
