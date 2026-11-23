.class Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/MGGameDetailAdapter;


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
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;->a(Ljava/lang/Boolean;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Landroid/widget/ImageView;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const v0, 0x7f0804bb

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g(Lcom/join/mgps/adapter/MGGameDetailAdapter;Z)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const v0, 0x7f0805c6

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-static {p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g(Lcom/join/mgps/adapter/MGGameDetailAdapter;Z)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method
