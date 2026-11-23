.class Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;

    .line 2
    .line 3
    iput-boolean p2, p1, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->checkboxischecked:Z

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstInstallAppCompanyDialog()Lorg/androidannotations/api/sharedpreferences/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;

    .line 12
    .line 13
    iget-boolean p2, p2, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->checkboxischecked:Z

    .line 14
    .line 15
    xor-int/lit8 p2, p2, 0x1

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
