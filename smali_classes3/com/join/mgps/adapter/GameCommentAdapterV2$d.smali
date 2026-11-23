.class Lcom/join/mgps/adapter/GameCommentAdapterV2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/GameCommentAdapterV2;->m(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/InformationCommentBeanV2;

.field final synthetic c:Lcom/join/mgps/adapter/GameCommentAdapterV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/GameCommentAdapterV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$commitDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$d;->c:Lcom/join/mgps/adapter/GameCommentAdapterV2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$d;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$d;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getPraise()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$d;->c:Lcom/join/mgps/adapter/GameCommentAdapterV2;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/adapter/GameCommentAdapterV2;->b(Lcom/join/mgps/adapter/GameCommentAdapterV2;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "\u4f60\u5df2\u8d5e\u8fc7"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$d;->c:Lcom/join/mgps/adapter/GameCommentAdapterV2;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/join/mgps/adapter/GameCommentAdapterV2;->b(Lcom/join/mgps/adapter/GameCommentAdapterV2;)Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    move-object v0, p1

    .line 46
    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .line 48
    const v1, 0x7f080c51

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$d;->c:Lcom/join/mgps/adapter/GameCommentAdapterV2;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/adapter/GameCommentAdapterV2;->b(Lcom/join/mgps/adapter/GameCommentAdapterV2;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const v1, 0x7f010095

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$d;->c:Lcom/join/mgps/adapter/GameCommentAdapterV2;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/join/mgps/adapter/GameCommentAdapterV2;->d:Lcom/join/mgps/adapter/GameCommentAdapterV2$j;

    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$d;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 77
    .line 78
    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/GameCommentAdapterV2$j;->b(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method
