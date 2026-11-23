.class Lcom/join/mgps/adapter/d2$l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/d2$a1;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic e:Lcom/join/mgps/adapter/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$a1;ILcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalCommentViewHolder",
            "val$position",
            "val$commitDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$l0;->e:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/d2$l0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/d2$l0;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/d2$l0;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$l0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/d2$a1;->r(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "\u67e5\u770b\u5168\u90e8"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$l0;->e:Lcom/join/mgps/adapter/d2;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->i(Lcom/join/mgps/adapter/d2;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget v0, p0, Lcom/join/mgps/adapter/d2$l0;->c:I

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$l0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/join/mgps/adapter/d2$a1;->d(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const v0, 0x7fffffff

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$l0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/join/mgps/adapter/d2$a1;->r(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v0, "\u6536\u8d77"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$l0;->e:Lcom/join/mgps/adapter/d2;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->i(Lcom/join/mgps/adapter/d2;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget v1, p0, Lcom/join/mgps/adapter/d2$l0;->c:I

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$l0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/join/mgps/adapter/d2$a1;->d(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const/4 v1, 0x5

    .line 88
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$l0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/join/mgps/adapter/d2$a1;->r(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method
