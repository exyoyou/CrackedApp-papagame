.class Lcom/join/mgps/adapter/InformationAdapter$c;
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
.field final synthetic b:Lcom/join/mgps/dto/InformationCommentBean;

.field final synthetic c:Lcom/join/mgps/adapter/InformationAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/InformationAdapter;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$informationCommentBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$c;->c:Lcom/join/mgps/adapter/InformationAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/InformationAdapter$c;->b:Lcom/join/mgps/dto/InformationCommentBean;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapter$c;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$c;->c:Lcom/join/mgps/adapter/InformationAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/adapter/InformationAdapter;->a(Lcom/join/mgps/adapter/InformationAdapter;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "\u4f60\u5df2\u8d5e\u8fc7"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/join/mgps/adapter/InformationAdapter$c;->c:Lcom/join/mgps/adapter/InformationAdapter;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/join/mgps/adapter/InformationAdapter;->a(Lcom/join/mgps/adapter/InformationAdapter;)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Landroid/widget/ImageView;

    .line 43
    .line 44
    const v1, 0x7f080c51

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapter$c;->c:Lcom/join/mgps/adapter/InformationAdapter;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/adapter/InformationAdapter;->a(Lcom/join/mgps/adapter/InformationAdapter;)Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const v1, 0x7f010095

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Landroid/os/Message;

    .line 67
    .line 68
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    iput v0, p1, Landroid/os/Message;->what:I

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapter$c;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 75
    .line 76
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapter$c;->c:Lcom/join/mgps/adapter/InformationAdapter;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/join/mgps/adapter/InformationAdapter;->c(Lcom/join/mgps/adapter/InformationAdapter;)Landroid/os/Handler;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method
