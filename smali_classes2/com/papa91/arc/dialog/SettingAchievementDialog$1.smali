.class Lcom/papa91/arc/dialog/SettingAchievementDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingAchievementDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->access$000(Lcom/papa91/arc/dialog/SettingAchievementDialog;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->access$100(Lcom/papa91/arc/dialog/SettingAchievementDialog;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->access$100(Lcom/papa91/arc/dialog/SettingAchievementDialog;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->access$100(Lcom/papa91/arc/dialog/SettingAchievementDialog;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/papa91/arc/bean/TypeBean;

    .line 42
    .line 43
    if-ne v1, p1, :cond_0

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_1
    invoke-virtual {v2, v3}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 55
    .line 56
    invoke-static {v0, p1}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->access$002(Lcom/papa91/arc/dialog/SettingAchievementDialog;I)I

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->access$200(Lcom/papa91/arc/dialog/SettingAchievementDialog;)Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->access$100(Lcom/papa91/arc/dialog/SettingAchievementDialog;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/papa91/arc/bean/TypeBean;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getType()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-static {v0, p1}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->access$300(Lcom/papa91/arc/dialog/SettingAchievementDialog;I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method
