.class Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->val$position:I

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

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->access$000(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->access$100(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ge p1, v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->getBinds()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 57
    .line 58
    iget v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->heroIndex:I

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/lit8 p1, p1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->access$000(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->val$position:I

    .line 75
    .line 76
    invoke-interface {p1, v0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;->onSpBind(I)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method
