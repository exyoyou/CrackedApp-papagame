.class Lcom/join/mgps/adapter/r4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/r4$b;

.field final synthetic d:Lcom/join/mgps/adapter/r4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r4;ILcom/join/mgps/adapter/r4$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$position",
            "val$finalMViewHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r4$a;->d:Lcom/join/mgps/adapter/r4;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/r4$a;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/r4$a;->c:Lcom/join/mgps/adapter/r4$b;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r4$a;->d:Lcom/join/mgps/adapter/r4;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/r4;->d:Ljava/util/HashMap;

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/adapter/r4$a;->b:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/adapter/r4$a;->d:Lcom/join/mgps/adapter/r4;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/adapter/r4;->d:Ljava/util/HashMap;

    .line 26
    .line 27
    iget v0, p0, Lcom/join/mgps/adapter/r4$a;->b:I

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/adapter/r4$a;->c:Lcom/join/mgps/adapter/r4$b;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/join/mgps/adapter/r4$b;->a:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/r4$a;->d:Lcom/join/mgps/adapter/r4;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/join/mgps/adapter/r4;->d:Ljava/util/HashMap;

    .line 50
    .line 51
    iget v0, p0, Lcom/join/mgps/adapter/r4$a;->b:I

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/adapter/r4$a;->c:Lcom/join/mgps/adapter/r4$b;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/join/mgps/adapter/r4$b;->a:Landroid/widget/ImageView;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/r4$a;->d:Lcom/join/mgps/adapter/r4;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/join/mgps/adapter/r4;->a(Lcom/join/mgps/adapter/r4;)Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    instance-of p1, p1, Lcom/join/mgps/activity/MyGameEditActivity;

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/adapter/r4$a;->d:Lcom/join/mgps/adapter/r4;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/join/mgps/adapter/r4;->a(Lcom/join/mgps/adapter/r4;)Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/join/mgps/activity/MyGameEditActivity;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/adapter/r4$a;->d:Lcom/join/mgps/adapter/r4;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/join/mgps/adapter/r4;->d:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MyGameEditActivity;->setDelTotal(Ljava/util/HashMap;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    return-void
.end method
