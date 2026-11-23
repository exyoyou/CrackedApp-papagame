.class Lcom/join/mgps/activity/message/MessageMainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/MessageMainActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/message/MessageMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/MessageMainActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 4
    .line 5
    iget v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->index:I

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 11
    .line 12
    iget v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->index:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setCommunity_surplus_number(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 24
    .line 25
    iget-boolean v1, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->isLike:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->communityFragment:Lcom/join/mgps/activity/message/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/a;->b0()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x2

    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setReplay_surplus_number(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 44
    .line 45
    iget-boolean v1, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->isLike:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget-object v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->messagePriaceFragment:Lcom/join/mgps/activity/message/c;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/c;->d0()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-nez v0, :cond_2

    .line 56
    .line 57
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setNotice_surplus_number(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 73
    .line 74
    iget-object v2, v1, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/join/mgps/activity/message/MessageMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method
