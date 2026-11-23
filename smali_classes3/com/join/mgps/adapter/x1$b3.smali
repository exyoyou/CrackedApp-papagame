.class Lcom/join/mgps/adapter/x1$b3;
.super Lf7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b3"
.end annotation


# instance fields
.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/LinearLayout;

.field final synthetic f:Lcom/join/mgps/adapter/x1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$b3;->f:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lf7/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1a48

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$b3;->d:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a0f31

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$b3;->e:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$b3;->d:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$b3;->e:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/adapter/x1$b3$a;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/x1$b3$a;-><init>(Lcom/join/mgps/adapter/x1$b3;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
