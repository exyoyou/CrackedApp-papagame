.class Lcom/join/mgps/fragment/z4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/z4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter$d<",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/z4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/z4;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/z4$c;->a:Lcom/join/mgps/fragment/z4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "view",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/z4$c;->a:Lcom/join/mgps/fragment/z4;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/fragment/z4;->c0(Lcom/join/mgps/fragment/z4;)Lcom/join/mgps/adapter/j6;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean p1, p1, Lcom/join/mgps/adapter/j6;->g:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/z4$c;->a:Lcom/join/mgps/fragment/z4;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/fragment/z4;->c0(Lcom/join/mgps/fragment/z4;)Lcom/join/mgps/adapter/j6;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-boolean p1, p1, Lcom/join/mgps/adapter/j6;->g:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    add-int/lit8 p3, p3, -0x1

    .line 25
    .line 26
    :cond_1
    if-ltz p3, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/fragment/z4$c;->a:Lcom/join/mgps/fragment/z4;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/fragment/z4;->d0(Lcom/join/mgps/fragment/z4;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-lt p3, p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/z4$c;->a:Lcom/join/mgps/fragment/z4;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/mgps/fragment/z4;->d0(Lcom/join/mgps/fragment/z4;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iget-object p3, p0, Lcom/join/mgps/fragment/z4$c;->a:Lcom/join/mgps/fragment/z4;

    .line 64
    .line 65
    invoke-static {p3}, Lcom/join/mgps/fragment/z4;->S(Lcom/join/mgps/fragment/z4;)Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p3, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    return-void
.end method
