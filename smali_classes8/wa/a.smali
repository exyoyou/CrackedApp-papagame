.class public Lwa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwa/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/yatoooon/screenadaptation/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/yatoooon/screenadaptation/a;->h(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/yatoooon/screenadaptation/a;->e(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lcom/yatoooon/screenadaptation/a;->b(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/yatoooon/screenadaptation/a;->c(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/yatoooon/screenadaptation/a;->d(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
