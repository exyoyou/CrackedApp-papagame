.class Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/DetailResultBeanV3;Landroid/os/Handler;Landroid/widget/RelativeLayout;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    return-void
.end method
