.class Lcom/join/mgps/adapter/x1$c3;
.super Lf7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c3"
.end annotation


# instance fields
.field public d:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$c3;->f:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lf7/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a14a2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$c3;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$c3;->e:Landroid/widget/LinearLayout;

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
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$c3;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$c3;->e:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    new-instance v1, Lcom/join/mgps/adapter/x1$c3$a;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/x1$c3$a;-><init>(Lcom/join/mgps/adapter/x1$c3;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
