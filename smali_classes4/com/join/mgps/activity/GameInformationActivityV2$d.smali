.class Lcom/join/mgps/activity/GameInformationActivityV2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;->setOnPraiseListener(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/InformationCommentBeanV2;

.field final synthetic c:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$d;->c:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$d;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$d;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$d;->c:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "\u4f60\u5df2\u8d5e\u8fc7"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$d;->c:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 34
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$d;->c:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const v1, 0x7f010095

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$d;->c:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->mListenr:Lcom/join/mgps/activity/GameInformationActivityV2$p;

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$d;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 71
    .line 72
    invoke-interface {p1, v0}, Lcom/join/mgps/activity/GameInformationActivityV2$p;->b(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method
