.class Lcom/join/mgps/adapter/InformationAdapter$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/InformationAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/InformationAdapter$p;

.field final synthetic c:Lcom/join/mgps/adapter/InformationAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/InformationAdapter;Lcom/join/mgps/adapter/InformationAdapter$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalCommentViewHolder1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->c:Lcom/join/mgps/adapter/InformationAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->b:Lcom/join/mgps/adapter/InformationAdapter$p;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->b:Lcom/join/mgps/adapter/InformationAdapter$p;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/InformationAdapter$p;->j:Landroid/widget/TextView;

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
    const-string v0, "\u67e5\u770b\u5168\u90e8"

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
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->b:Lcom/join/mgps/adapter/InformationAdapter$p;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/adapter/InformationAdapter$p;->k(Lcom/join/mgps/adapter/InformationAdapter$p;)Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const v0, 0x7fffffff

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->b:Lcom/join/mgps/adapter/InformationAdapter$p;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/join/mgps/adapter/InformationAdapter$p;->j:Landroid/widget/TextView;

    .line 36
    .line 37
    const-string v0, "\u6536\u8d77"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->b:Lcom/join/mgps/adapter/InformationAdapter$p;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/join/mgps/adapter/InformationAdapter$p;->k(Lcom/join/mgps/adapter/InformationAdapter$p;)Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 v1, 0x5

    .line 50
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->b:Lcom/join/mgps/adapter/InformationAdapter$p;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/mgps/adapter/InformationAdapter$p;->j:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method
