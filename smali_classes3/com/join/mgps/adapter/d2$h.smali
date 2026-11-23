.class Lcom/join/mgps/adapter/d2$h;
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
.field final synthetic b:Lcom/join/mgps/adapter/d2$r1;

.field final synthetic c:Lcom/join/mgps/adapter/d2$b1;

.field final synthetic d:Lcom/join/mgps/adapter/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$r1;Lcom/join/mgps/adapter/d2$b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$holderGDescribe",
            "val$describ"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$h;->d:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/d2$h;->b:Lcom/join/mgps/adapter/d2$r1;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/d2$h;->c:Lcom/join/mgps/adapter/d2$b1;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$h;->b:Lcom/join/mgps/adapter/d2$r1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$r1;->e:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "\u5c55\u5f00"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$h;->b:Lcom/join/mgps/adapter/d2$r1;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$r1;->d:Landroid/widget/TextView;

    .line 24
    .line 25
    const v0, 0x7fffffff

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$h;->b:Lcom/join/mgps/adapter/d2$r1;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$r1;->e:Landroid/widget/TextView;

    .line 34
    .line 35
    const-string v0, "\u6536\u8d77"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$h;->c:Lcom/join/mgps/adapter/d2$b1;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput v0, p1, Lcom/join/mgps/adapter/d2$b1;->c:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$h;->b:Lcom/join/mgps/adapter/d2$r1;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$r1;->d:Landroid/widget/TextView;

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$h;->b:Lcom/join/mgps/adapter/d2$r1;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$r1;->e:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$h;->c:Lcom/join/mgps/adapter/d2$b1;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput v0, p1, Lcom/join/mgps/adapter/d2$b1;->c:I

    .line 65
    .line 66
    :goto_0
    return-void
.end method
