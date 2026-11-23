.class Lcom/join/mgps/adapter/x1$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/x1$i2;

.field final synthetic c:Lcom/join/mgps/adapter/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/adapter/x1$i2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$holderGGamdetialSimple"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$z;->c:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$z;->b:Lcom/join/mgps/adapter/x1$i2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$z;->b:Lcom/join/mgps/adapter/x1$i2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$i2;->e:Landroid/widget/TextView;

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
    const-string v0, " "

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$z;->b:Lcom/join/mgps/adapter/x1$i2;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$i2;->e:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$z;->b:Lcom/join/mgps/adapter/x1$i2;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$i2;->e:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f080104

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$z;->b:Lcom/join/mgps/adapter/x1$i2;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$i2;->d:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$z;->b:Lcom/join/mgps/adapter/x1$i2;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$i2;->e:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$z;->b:Lcom/join/mgps/adapter/x1$i2;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$i2;->e:Landroid/widget/TextView;

    .line 60
    .line 61
    const v0, 0x7f080162

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$z;->b:Lcom/join/mgps/adapter/x1$i2;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$i2;->d:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method
