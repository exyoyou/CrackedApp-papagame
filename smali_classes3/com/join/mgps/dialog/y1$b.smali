.class Lcom/join/mgps/dialog/y1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/y1;->f(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/join/mgps/dialog/y1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/y1;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y1$b;->c:Lcom/join/mgps/dialog/y1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/dialog/y1$b;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

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
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$b;->c:Lcom/join/mgps/dialog/y1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/y1;->a(Lcom/join/mgps/dialog/y1;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/dialog/y1$c;

    .line 12
    .line 13
    iget p1, p1, Lcom/join/mgps/dialog/y1$c;->a:I

    .line 14
    .line 15
    mul-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/join/mgps/dialog/y1$b;->c:Lcom/join/mgps/dialog/y1;

    .line 18
    .line 19
    invoke-static {p3}, Lcom/join/mgps/dialog/y1;->b(Lcom/join/mgps/dialog/y1;)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-le p2, p3, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/dialog/y1$b;->b:Landroid/app/Activity;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p3, p2, p1}, Lcom/join/mgps/Util/g0;->E(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/join/mgps/dialog/y1$b;->c:Lcom/join/mgps/dialog/y1;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/join/mgps/dialog/y1;->c(Lcom/join/mgps/dialog/y1;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-interface {p2, p1}, Lcom/join/mgps/activity/posting/PostingActivity$m;->a(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$b;->c:Lcom/join/mgps/dialog/y1;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/join/mgps/dialog/y1;->a(Lcom/join/mgps/dialog/y1;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$b;->c:Lcom/join/mgps/dialog/y1;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dialog/y1;->d()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
